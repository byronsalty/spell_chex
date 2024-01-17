defmodule SpellChex.MixProject do
  use Mix.Project

  def project do
    [
      app: :spell_chex,
      version: "0.0.13",
      elixir: "~> 1.15",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      description: description(),
      package: package(),
      source_url: "https://github.com/byronsalty/spell_chex"
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
      {:ex_doc, "~> 0.31", only: :dev, runtime: false}

      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
    ]
  end

  defp description() do
    "A simple utility to make a list of dictionary words available and referencing for spell checking."
  end

  defp package() do
    [
      # This option is only needed when you don't want to use the OTP application name
      name: "spell_chex",
      # These are the default files included in the package
      files: ~w(lib priv .formatter.exs mix.exs README* LICENSE* CHANGELOG*),
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/byronsalty/spell_chex"}
    ]
  end
end
