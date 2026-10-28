defmodule HelloOtp.CLI do
  @moduledoc "Entry point when built as an escript (`mix escript.build`)."

  def main(args) do
    name = List.first(args) || "World"
    IO.puts(HelloOtp.greet(name))
  end
end
