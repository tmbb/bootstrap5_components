defmodule Bootstrap5Components.IconsBuilder do
  def unhygienize_meta(meta) do
    meta
    |> Keyword.delete(:context)
    |> Keyword.delete(:counter)
  end

  defp remove_hygiene(ast) do
    Macro.prewalk(ast, fn
      {:assigns, meta, module} when is_atom(module) ->
        {:assigns, unhygienize_meta(meta), nil}

      {:def, meta, args} ->
        {:def, unhygienize_meta(meta), args}

      other ->
        other
    end)
  end

  def css_class_declaration(name, svg) do
    escaped_svg = String.replace(svg, "\"", "'")

    pretty_css = """
    .bi.bi-#{name} {
      display: inline-block;
      content: "";
      vertical-align: -.125em;
      background-image: url("data:image/svg+xml,#{escaped_svg}");
      background-repeat: no-repeat;
      background-size: 1rem 1rem;
    }
    """

    css = String.replace(pretty_css, "\r\n", "\n")
    css = String.replace(css, "<", "%3C")
    css = String.replace(css, ">", "%3e")
    css = String.replace(css, ~r/\s*\{\s+/, "{")
    css = String.replace(css, ~r/\s+\}\s*/, "}")
    css = String.replace(css, ~r/\s*:\s+/, ":")
    css = String.replace(css, ~r/;\s+/, ";")
    css = String.replace(css, ~r/\s+/, " ")
    css = String.trim(css)

    [css, "\n"]
  end

  def build_icons_css_file(icons_directory, icon_names) do
    icon_paths = Enum.map(icon_names, fn name -> Path.join(icons_directory, name <> ".svg") end)

    class_declarations =
      for {icon_name, icon_path} <- Enum.zip(icon_names, icon_paths) |> Enum.sort() do
        # Build the template from the original SVG file
        svg = File.read!(icon_path)
        svg = String.replace(svg, ~S[width="16"], ~S[width="1rem"])
        svg = String.replace(svg, ~S[height="16"], ~S[height="1rem"])

        css_class_declaration(icon_name, svg)
      end


    class_declarations
  end

  defmacro __using__(opts) do
    icons_directory = :code.priv_dir(:bootstrap5components) |> Path.join("assets/icons")
    icon_names = Keyword.fetch!(opts, :icons)

    css_contents = build_icons_css_file(icons_directory, icon_names)
    File.write!("example_icons_css.css", css_contents)

    nil
  end
end


# defmodule Bootstrap5Components.InlineIcons do
#   icon_directory = "lib/bootstrap5components/icons/"
#   icon_filenames = File.ls!(icon_directory)
#   icon_paths = Enum.map(icon_filenames, fn basename -> Path.join(icon_directory, basename) end)

#   for icon_path <- icon_paths do
#     @external_resource icon_path
#   end

#   require Bootstrap5Components.InlineIcons.Builder
#   Bootstrap5Components.InlineIcons.Builder.magick()
# end
