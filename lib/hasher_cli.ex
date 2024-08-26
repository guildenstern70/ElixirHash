#
# Hasher
# (C) 2024 Alessio Saltarin <alessiosaltarin@gmail.com>
# MIT License
#

defmodule Hasher.CLI do

  def main(_args \\ []) do
    IO.puts("Hasher v.0.1.0")

    password = "MySecretPassword"
    IO.puts("Hashing password: #{password}")
    hashed = Hasher.hash(password)
    IO.puts("Hashed password: #{hashed}")

  end
end
