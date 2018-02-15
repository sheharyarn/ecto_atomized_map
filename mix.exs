defmodule Ecto.AtomizedMap.Mixfile do
  use Mix.Project

  @app     :ecto_atomized_app
  @name    "Ecto.AtomizedApp"
  @version "0.1.0"
  @github  "https://github.com/sheharyarn/#{@app}"
  @author  "Sheharyar Naseer"
  @license "MIT"


  def project do
    [
      # Project
      app:          @app,
      version:      @version,
      elixir:       "~> 1.3",
      description:  description(),
      package:      package(),
      deps:         deps(),

      # ExDoc
      name:         @name,
      source_url:   @github,
      homepage_url: @github,
      docs: [
        main:       @name,
        canonical:  "https://hexdocs.pm/#{@app}",
        extras:     ["README.md"]
      ]
    ]
  end


  def application do
    [extra_applications: [:logger]]
  end


  defp deps do
    [
      {:ecto,     ">= 2.0.0"},
      {:ex_utils, "~> 0.1.4"},
    ]
  end


  defp description do
    "Use Maps with Atom Keys in Ecto Schemas"
  end


  defp package do
    [
      name: @app,
      maintainers: [@author],
      licenses: [@license],
      files: ~w(mix.exs lib README.md),
      links: %{"Github" => @github}
    ]
  end

end
