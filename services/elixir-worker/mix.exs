defmodule HelloOtp.MixProject do
  use Mix.Project

  def project do
    [
      app: :hello_otp,
      version: "0.1.0",
      elixir: "~> 1.14",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      escript: [main_module: HelloOtp.CLI]
    ]
  end

  # OTP application: starts the supervision tree in HelloOtp.Application
  def application do
    [
      extra_applications: [:logger],
      mod: {HelloOtp.Application, []}
    ]
  end

  # No third-party dependencies, so `mix deps.get` has nothing to download.
  defp deps do
    []
  end
end
