defmodule TvmazeWrapper.Mixfile do
  use Mix.Project

  def project do
    [app: :tvmaze_wrapper,
     version: "0.1.4",
     elixir: "~> 1.6.0-rc.0",
     description: "Elixir wrapper for the tvmaze.com API",
     package: package(),
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps()]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    # Specify extra applications you'll use from Erlang/Elixir
    [extra_applications: [:logger]]
    [applications: [:hackney, :httpoison]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:my_dep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:my_dep, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [{:httpoison, "~> 0.12"},
     {:poison, "~> 3.1.0"},
     {:ex_doc, ">= 0.0.0", only: :dev}]
  end

  defp package do
    # These are the default files included in the package
    [
      name: :tvmaze_wrapper,
      files: ["lib", "mix.exs", "README.md", "LICENSE"],
      maintainers: ["Jeremy Montesinos"],
      licenses: ["MIT License"],
      links: %{"GitHub" => "http://framagit.org/mjerem34/tvmaze_elixir_wrapper"}
    ]
  end
end
