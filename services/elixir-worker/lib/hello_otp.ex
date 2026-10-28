defmodule HelloOtp do
  @moduledoc """
  Public API of the sample app.
  """

  @doc """
  Builds a greeting.

      iex> HelloOtp.greet("Pune")
      "Hello, Pune!"
  """
  @spec greet(String.t()) :: String.t()
  def greet(name) when is_binary(name), do: "Hello, #{name}!"

  @doc "Increments the shared counter and returns the new value."
  @spec bump() :: non_neg_integer()
  def bump, do: HelloOtp.Counter.increment()

  @doc "Returns the current counter value."
  @spec count() :: non_neg_integer()
  def count, do: HelloOtp.Counter.value()
end
