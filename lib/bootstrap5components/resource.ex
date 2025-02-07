defprotocol Bootstrap5Components.Resource do
  @moduledoc """
  A protocol to help represent resources in web applications
  using the components defined by `Bootstrap5Components`.
  """

  @doc """
  Render resource as plain text.
  """
  @spec as_text(t) :: String.t()
  def as_text(resource)

  @doc """
  Render resource as HTML.
  """
  @spec as_html(t) :: String.t()
  def as_html(resource)

  @doc """
  Path for the resource in a given web application.
  """
  @spec path_for(t) :: String.t()
  def path_for(resource)
end
