defmodule Server.API.Subscriber do
  use Application

  # See http://elixir-lang.org/docs/stable/elixir/Application.html
  # for more information on OTP Applications
  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    children = []

    Server.API.Subscriber.Client.RedisClient.initialize

    # See http://elixir-lang.org/docs/stable/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Server.API.Subscriber.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
