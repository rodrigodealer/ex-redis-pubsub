use Mix.Config

config :maru, Server.API,
  http: [port: System.get_env("PORT")]

config :exredis,
  host: System.get_env("REDIS_HOST"),
  port: 17076,
  password: "TpKFOfaTl53hLw3H",
  db: 0,
  reconnect: :no_reconnect,
  max_queue: :infinity
