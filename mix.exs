defmodule PhoenixExtraGenerators.MixProject do
  use Mix.Project

  @version "1.0.0"

  def project do
    [
      app: :phoenix_extra_generators,
      version: @version,
      elixir: "~> 1.5",
      description: "Extra generator commands for Phoenix.",
      package: package(),
      deps: deps(),
      docs: [
      extras: ["README.md"],
        main: "readme",
        source_ref: "v#{@version}",
        source_url: "https://github.com/sebastiandedeyne/phoenix_extra_generators"
      ]
    ]
  end

  def application do
    [
      applications: [:phoenix]
    ]
  end

  defp package do
    [
      name: :phoenix_extra_generators,
      files: ["lib", "priv", "mix.exs", "README.md", "LICENSE"],
      maintainers: ["Sebastian De Deyne"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/sebastiandedeyne/phoenix_extra_generators"}
    ]
  end

  defp deps do
    [
      {:phoenix, ">= 1.3.0"},
      {:ex_doc, ">= 0.0.0", only: :dev}
    ]
  end
end
