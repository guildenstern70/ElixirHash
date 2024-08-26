#
# Hasher
# (C) 2024 Alessio Saltarin <alessiosaltarin@gmail.com>
# MIT License
#

defmodule ElixirLearn.MixProject do
  use Mix.Project

  def project do
    [
      app: :hasher,
      version: "0.1.0",
      elixir: "~> 1.12",
      escript: escript(),

      start_permanent: Mix.env() == :prod
    ]
  end

  defp escript do
    [main_module: Hasher.CLI]
  end
end
