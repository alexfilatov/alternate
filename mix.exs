defmodule Polygot.Mixfile do
  use Mix.Project

  def project do
    [app: :polygot,
     version: "0.1.0",
     elixir: "~> 1.3",
     compilers: [:phoenix, :gettext] ++ Mix.compilers,
     name: "Polygot",
     docs: [extras: ["README.md"], main: "Polygot"],
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     package: package,
     deps: deps,
     description: """
     A fully featured library for localizing your Phoenix website
     """]
  end

  def application do
    [applications: [:logger]]
  end

  defp deps do
    [
      {:phoenix, "~> 1.1"},
      {:gettext, "~> 0.9"}
    ]
  end

  defp package do
    [ maintainers: ["Mohamed Boudra"],
      licenses: ["Apache License 2.0"],
      links: %{ "Github" => "https://github.com/boudra/polygot" },
      files: ~w(lib priv web README.md mix.exs LICENSE.md)]
  end
end
