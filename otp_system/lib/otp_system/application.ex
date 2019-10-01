defmodule OtpSystem.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      %{
        id: OtpSystem.Incrementer,
        start: {OtpSystem.Incrementer, :start_link, [2]}
      }
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: OtpSystem.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
