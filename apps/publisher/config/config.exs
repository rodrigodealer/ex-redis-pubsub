use Mix.Config

config :maru, Server.API,
  http: [port: System.get_env("PORT")]

config :exredis,
  host: System.get_env("REDIS_HOST"),
  port: String.to_integer(System.get_env("REDIS_PORT")),
  password: System.get_env("REDIS_PASSWORD"),
  db: 0,
  reconnect: :no_reconnect,
  max_queue: :infinity
