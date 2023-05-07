defmodule ScrapeBootstrapThemes do
  @use_local_cached_files true
  # @full_code_path "lib/bootstrap5components.ex"
  @bootswatch_html_url "https://cdnjs.com/libraries/bootswatch"
  @bootswatch_html_path "scripts/cache/cdnjs_bootswatch.html"
  @css_directory "scripts/cache/original_files"

  @darkness_factor 0.80
  @modal_background_opacity 0.85

  defp to_int!(string) do
    {int, ""} = Integer.parse(string)
    int
  end

  def run(opts \\  []) do
    use_local_cached_files = Keyword.get(opts, :cached, @use_local_cached_files)
    # If we're building everything anew, download the necessary files
    # from the respective CDN (which in our case will be http://cdnjs.com)
    # Wverything lese can be rebuild from the cached files
    unless use_local_cached_files do
      html = download_file!(@bootswatch_html_url)
      # Write the file so that we don't have to download it again
      File.write!(@bootswatch_html_path, html)
      urls = extract_urls(html)
      # Download the CSS files and save them so that we don't
      # have to download them every time
      download_css_files(urls, @css_directory)
    end

    # From this point on, nothing is downloaded and everything
    # can be built from cached files
    html = File.read!(@bootswatch_html_path)
    data = extract_data(html, @css_directory)

    # Add the custom CSS to ther end of the default boostrap/bootswatch files
    customize_themes(data)

    # # Build a replacement for the part we want to replace
    # replacement = build_ex_fragment_from_scraped_html(data)
    # full_code = File.read!(@full_code_path)
    # # Replace the part between the markers by the replacement we've just built
    # {:ok, transformed_code} =
    #   replace_between(
    #     full_code,
    #     "# BEGIN:css_assets_from_cdn\n",
    #     "# END:css_assets_from_cdn\n",
    #     replacement
    #   )

    # pretty_code = Code.format_string!(transformed_code)

    # File.write!(@full_code_path, pretty_code)
  end

  # NOTE: the file contents are returned as a binary and not a charlist
  defp download_file!(url) do
    url_charlist = to_charlist(url)
    # Get the body of the response using pattern matching
    # Fail noisily if the file can't be downloaded
    {:ok, resp} = :httpc.request(:get, {url_charlist, []}, [], [body_format: :binary])
    {{_, 200, 'OK'}, _headers, body} = resp

    to_string(body)
  end

  def code_from_html_fragment(html) do
    [theme] = Regex.run(~r/(\w+)\/bootstrap.min.css"/, html, capture: :all_but_first)
    {theme, html}
  end

  def url_from_html_fragment(html) do
    [url] = Regex.run(~r/href="([^"]*)"/, html, capture: :all_but_first)
    [theme] = Regex.run(~r/(\w+)\/bootstrap.min.css/, url, capture: :all_but_first)
    {theme, url}
  end

  def extract_html_code(html_body) do
    # Behold! Using a regex to scrape JS inside HTML; keep only the escaped HTML
    scraped = Regex.scan(~r/code:\s*"(?P<escaped_html>(\\"|[^"])*)"/, html_body, capture: ["escaped_html"])
    # Behold again! Using a regex to scrape HTML
    html_fragments = Enum.map(scraped, fn [escaped_html] -> Macro.unescape_string(escaped_html) end)

    minimized_css_html_fragments =
      Enum.filter(html_fragments, fn fragment ->
        Regex.run(~r/bootstrap.min.css"/, fragment, capture: :all_but_first)
      end)

    Enum.map(minimized_css_html_fragments, &code_from_html_fragment/1)
  end

  def extract_urls(html) do
    # Behold! Using a regex to scrape JS inside HTML; keep only the escaped HTML
    scraped = Regex.scan(~r/code:\s*"(?P<escaped_html>(\\"|[^"])*)"/, html, capture: ["escaped_html"])
    # Behold again! Using a regex to scrape HTML
    html_fragments = Enum.map(scraped, fn [escaped_html] -> Macro.unescape_string(escaped_html) end)

    minimized_css_html_fragments =
      Enum.filter(html_fragments, fn fragment ->
        Regex.run(~r/bootstrap.min.css"/, fragment, capture: :all_but_first)
      end)

    data = Enum.map(minimized_css_html_fragments, &url_from_html_fragment/1)

    data
  end

  def build_ex_fragment_from_scraped_html(data) do
    fixed_overrides = """
      defp fixed_css_overrides() do
        \"""
    #{fixed_css_overrides()}
        \"""
      end
    """

    function_definitions =
      for values <- data do
        html_code = values[:html_code]
        theme = values[:theme]
        css_overrides = build_html_for_css_overrides(values)

        pretty_html_code = String.replace(html_code, " />", "/>")
        pretty_html_code = String.replace(pretty_html_code, " ", "\n      ")
        pretty_html_code = String.replace(pretty_html_code, "/>", " />")

        """
          def css_assets_from_cdn(%{theme: #{inspect(theme)}} = assigns) do
            ~H\"""
            #{pretty_html_code}
        #{css_overrides}
            \"""
          end

        """
      end

    IO.iodata_to_binary(function_definitions ++ [fixed_overrides])
  end

  def fixed_css_overrides() do
    """
        .bi {
          display: inline-block
        }

        .live-modal {
          opacity: 1 !important;
          position: fixed;
          z-index: 1;
          left: 0;
          top: 0;
          width: 100%;
          height: 100%;
          overflow: auto;
          background-color: rgba(255,255,255,0.1);
        }

        .live-modal .modal-title {
          margin-top: 0;
        }

        .live-modal .close {
          position: absolute;
          right: 1rem;
          top: 1rem;
        }
    """
  end

  def build_css_overrides(values) do
    {bg_r, bg_g, bg_b} = darken_color(values.background_rgb)

    """
        .phx-no-feedback .form-control:focus.is-invalid, .phx-no-feedback .form-control:focus.is-valid {
          box-shadow:#{values.box_shadow};
          border-color:#{values.focus_border_color};
        }

        .phx-no-feedback .form-control.is-invalid, .phx-no-feedback .form-control.is-valid {
          border:#{values.border};
          background-image:none;
        }

        .phx-no-feedback .invalid-feedback, .phx.no-feedback .valid-feedback {
          display:none
        }

        .bi {
          display: inline-block
        }

        .live-modal {
          opacity: 1 !important;
          position: fixed;
          z-index: 1;
          left: 0;
          top: 0;
          width: 100%;
          height: 100%;
          overflow: auto;
          background-color: rgba(#{bg_r},#{bg_g},#{bg_b},#{@modal_background_opacity});
        }

        .live-modal .modal-title {
          margin-top: 0;
        }

        .live-modal .close {
          position: absolute;
          right: 1rem;
          top: 1rem;
        }
    """
  end

  def build_html_for_css_overrides(values) do
    """
        <style>
    #{build_css_overrides(values)}
        </style>\
    """
  end

  def build_minimized_css_overrides(values) do
    original_css = build_css_overrides(values)

    minimized_css =
      original_css
      |> String.replace(~r/\r\n/, "\n")
      |> String.replace(~r/\n\s+/, "")
      |> String.replace(~r/\s\s+/, " ")
      |> String.replace(~r/\s+\{/, "{")
      |> String.replace(~r/\s+\}/, "}")
      |> String.trim()

    minimized_css
  end

  def customize_themes(data) do
    for values <- data do
      customize_theme(values)
    end

    :ok
  end

  def customize_theme(values) do
    theme_src = Path.join("scripts/cache/original_files", values.theme <> ".css")
    theme_dst = Path.join("priv/assets/css/", values.theme <> ".css")
    theme_content = File.read!(theme_src)
    custom_minimized_css = build_minimized_css_overrides(values)
    customized_theme_content = [theme_content, "\n", custom_minimized_css]
    File.write!(theme_dst, customized_theme_content)
  end

  def get_css_values_from_contents(css_file) do
    [form_control_focus_css] = Regex.run(~r/.form-control:focus\s*{([^}]*)}/, css_file, capture: :all_but_first)
    [box_shadow] = Regex.run(~r/box-shadow:\s*([^;]*)\s*;?/, form_control_focus_css, capture: :all_but_first)
    [focus_border_color] = Regex.run(~r/border-color:\s*([^;]*)\s*;?/, form_control_focus_css, capture: :all_but_first)

    [bg_r, bg_g, bg_b] = Regex.run(~r/--bs-body-bg-rgb:\s*(\d+),(\d+),(\d+)\s*;/, css_file, capture: :all_but_first)
    background_rgb = {to_int!(bg_r), to_int!(bg_g), to_int!(bg_b)}

    [form_control_css] = Regex.run(~r/.form-control\s*{([^}]*)}/, css_file, capture: :all_but_first)
    [border] = Regex.run(~r/border:\s*([^;]*)\s*;?/, form_control_css, capture: :all_but_first)

    %{border: border, box_shadow: box_shadow, focus_border_color: focus_border_color, background_rgb: background_rgb}
  end

  def darken_color({r, g, b}) do
    f = @darkness_factor
    {round(f * r), round(f * g), round(f * b)}
  end

  def get_css_values(directory, urls) do
    for {theme, url} <- urls do
      path = Path.join(directory, theme <> ".css")
      content = File.read!(path)
      values = get_css_values_from_contents(content)
      {theme, Map.put(values, :url, url)}
    end
  end

  def download_css_files(urls, directory) do
    for {theme, url} <- urls do
      content = download_file!(url)
      :timer.sleep(0.25)
      File.write!(Path.join(directory, theme <> ".css"), content)
    end

    :ok
  end

  def extract_data(html, directory) do
    urls = extract_urls(html)
    data = get_css_values(directory, urls)
    html_code = extract_html_code(html)

    for {{theme, values}, {_theme, code_block}} <- Enum.zip(data, html_code) do
      values |> Map.put(:html_code, code_block) |> Map.put(:theme, theme)
    end
  end

  def normalize_as_unix(text), do: String.replace(text, "\r\n", "\n")

  def replace_between(text, begin_marker, end_marker, replacement) do
    text = normalize_as_unix(text)

    case String.split(text, begin_marker) do
      [before_replacement, rest] ->
        case String.split(rest, end_marker) do
          [_to_replace, after_replacement] ->
            content = IO.iodata_to_binary([
              before_replacement,
              begin_marker,
              replacement,
              end_marker,
              after_replacement
            ])

            {:ok, content}

          nil ->
            {:error, :end_marker_not_found}
        end

      nil ->
        {:error, :start_marker_not_found}
    end
  end
end

ScrapeBootstrapThemes.run(cached: true)
