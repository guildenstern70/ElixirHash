#
# Hasher
# (C) 2024 Alessio Saltarin <alessiosaltarin@gmail.com>
# MIT License
#

defmodule Hasher do

  def addSalt(message) do
    message <> "SALT"
  end

  def hashSHA256(password) do
    :crypto.hash(:sha256, password)
  end

  def toBase64(data) do
    Base.encode64(data)
  end

  def hash(passwordInClear) do
    passwordInClear
    |> addSalt
    |> hashSHA256
    |> toBase64
  end

end
