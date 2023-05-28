defmodule Bootstrap5Components.InlineIcons do
  @moduledoc """
  Inline icons for your bootstrap application.
  """
  icon_directory = "priv/assets/icons/"
  icon_filenames = File.ls!(icon_directory)
  icon_paths = Enum.map(icon_filenames, fn basename -> Path.join(icon_directory, basename) end)

  for icon_path <- icon_paths do
    @external_resource icon_path
  end

  require Bootstrap5Components.InlineIcons.Builder

  @doc """
  Add an inline icon.

  NOTE: inline icons can take up a lot of space in the webpage if they are reused
  many times in the same web page. Please consider using icon fonts instead.
  """
  Bootstrap5Components.InlineIcons.Builder.build_function_clauses()
end
