defmodule HelloOtp.Counter do
  @moduledoc "A supervised GenServer holding a counter."
  use GenServer

  def start_link(opts \\ []) do
    GenServer.start_link(__MODULE__, 0, Keyword.put_new(opts, :name, __MODULE__))
  end

  def increment(server \\ __MODULE__), do: GenServer.call(server, :increment)
  def value(server \\ __MODULE__), do: GenServer.call(server, :value)

  @impl true
  def init(initial), do: {:ok, initial}

  @impl true
  def handle_call(:increment, _from, n), do: {:reply, n + 1, n + 1}
  def handle_call(:value, _from, n), do: {:reply, n, n}
end
