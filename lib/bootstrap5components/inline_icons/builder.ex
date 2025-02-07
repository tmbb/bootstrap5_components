defmodule Bootstrap5Components.InlineIcons.Builder do
  @moduledoc false

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

  defmacro build_function_clauses() do
    icon_directory = "priv/assets/icons/"
    icon_filenames =
      icon_directory
      |> File.ls!()
      |> Enum.filter(fn filename -> String.ends_with?(filename, ".svg") end)

    icon_paths = Enum.map(icon_filenames, fn basename ->
      Path.join(icon_directory, basename)
    end)

    icon_names = Enum.map(icon_filenames, fn basename ->
      String.trim_trailing(basename, ".svg")
    end)

    definitions =
      for {icon_name, icon_path} <- Enum.zip(icon_names, icon_paths) |> Enum.sort() do
        # Build the template from the original SVG file
        template = File.read!(icon_path)
        template = String.replace(template, ~S[width="16"], ~S[width={@size}])

        template =
          String.replace(
            template,
            ~S[height="16"],
            ~S[title={@title} height={@size} style="vertical-align: -0.125em;"]
          )

        # Build a sigil from the SVG contents
        sigil = {:sigil_H, [delimiter: "\"\"\"", line: 0], [{:<<>>, [line: 1], [template]}, []]}

        quote do
          def icon(%{name: unquote(icon_name)} = unquote(Macro.var(:assigns, nil))) do
            unquote(sigil)
          end
        end
      end

    clean_ast =
      quote do
        use Phoenix.Component

        attr(:name, :string, required: true)
        attr(:title, :string, required: false, default: nil)
        attr(:size, :any, required: false, default: "1em")

        unquote_splicing(definitions)
      end

    remove_hygiene(clean_ast)
  end
end
