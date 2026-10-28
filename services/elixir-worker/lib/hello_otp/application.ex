defmodule HelloOtp.Application do
  @moduledoc false
  use Application

  @impl true
  def start(_type, _args) do
    children = [HelloOtp.Counter]
    Supervisor.start_link(children, strategy: :one_for_one, name: HelloOtp.Supervisor)
  end
end
