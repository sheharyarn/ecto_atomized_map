defmodule Ecto.AtomizedMap.Mixfile do
  use Mix.Project

  def project do
    [
      app: :ecto_atomized_map,
      version: "0.1.0",
      elixir: "~> 1.5",
      start_permanent: Mix.env == :prod,
      deps: deps()
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
end

