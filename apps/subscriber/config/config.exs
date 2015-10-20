use Mix.Config

config :exredis,
  host: System.get_env("REDIS_HOST"),
  port: System.get_env("REDIS_PORT"),
  password: System.get_env("REDIS_PASSWORD"),
  db: 0,
  reconnect: :no_reconnect,
  max_queue: :infinity
