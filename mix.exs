defmodule Bowling.Mixfile do
  use Mix.Project

  def project do
    [ app: :bowling,
      version: "0.0.1",
      elixir: "~> 0.12.2",
      deps: deps ]
  end

  def application do
    []
  end

  defp deps do
    []
  end
end
