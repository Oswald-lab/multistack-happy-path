defmodule HelloOtpTest do
  use ExUnit.Case, async: true
  doctest HelloOtp

  test "greets by name" do
    assert HelloOtp.greet("Elixir") == "Hello, Elixir!"
  end

  test "counter increments under supervision" do
    {:ok, pid} = HelloOtp.Counter.start_link(name: nil)
    assert HelloOtp.Counter.increment(pid) == 1
    assert HelloOtp.Counter.increment(pid) == 2
    assert HelloOtp.Counter.value(pid) == 2
  end

  test "application started the named counter" do
    before = HelloOtp.count()
    assert HelloOtp.bump() == before + 1
  end
end
