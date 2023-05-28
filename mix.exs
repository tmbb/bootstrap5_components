defmodule Bootstrap5components.MixProject do
  use Mix.Project

  def project do
    [
      app: :bootstrap5components,
      version: "0.1.0",
      elixir: "~> 1.14",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:phoenix_live_view, "~> 0.18"},
      {:gettext, "~> 0.18"},
      {:code_gen, path: "../ex_code_gen"},
      {:ex_doc, "~> 0.29", only: :dev},
      {:makeup_eex, "~> 0.1.0"}
    ]
  end
end
