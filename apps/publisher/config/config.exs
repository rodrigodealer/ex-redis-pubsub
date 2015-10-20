use Mix.Config

config :maru, Server.API,
  http: [port: 8880]

config :exredis,
  host: System.get_env("REDIS_HOST"),#"192.168.99.100",
  port: System.get_env("REDIS_PORT"),
  password: System.get_env("REDIS_PASSWORD"),
  db: 0,
  reconnect: :no_reconnect,
  max_queue: :infinity
