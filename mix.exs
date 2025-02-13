defmodule Bootstrap5Components.MixProject do
  use Mix.Project

  @version "0.4.0"

  def project do
    [
      app: :bootstrap5components,
      version: @version,
      elixir: "~> 1.14",
      build_embedded: Mix.env == :prod,
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      elixirc_paths: elixirc_paths(Mix.env()),
      package: package(),
      source_url: "https://github.com/tmbb/bootstrap5_components",
      docs: [
        assets: %{"docs_assets" => "assets"},
        before_closing_head_tag: &docs_css_assets/1
      ]
    ]
  end

  defp package() do
    [
      # This option is only needed when you don't want to use the OTP application name
      name: "bootstrap5components",
      description: "Phoenix components based on the Bootstrap5 CSS framework.",
      # These are the default files included in the package
      files: ~w(lib priv .formatter.exs mix.exs
                README* LICENSE* CHANGELOG*),
      licenses: ["Apache-2.0"],
      links: %{"GitHub" => "https://github.com/tmbb/bootstrap5_components"}
    ]
  end

  defp elixirc_paths(:test), do: ["lib", "test/fixtures"]
  defp elixirc_paths(_other), do: ["lib"]

  defp docs_css_assets(_format) do
    ~s[<link rel="stylesheet" href="assets/animate.css"/>]
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
      {:phoenix_live_view, "~> 1.0"},
      {:gettext, "~> 0.26"},
      {:code_gen, "~> 0.2"},
      {:ecto, "~> 3.10"},
      {:ex_doc, "~> 0.36", only: [:dev, :docs]},
      {:makeup_eex, "~> 2.0", only: [:dev, :docs]},
      {:makeup_html, "~> 0.2", only: [:dev, :docs]}
    ]
  end
end
