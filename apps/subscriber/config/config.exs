use Mix.Config

config :exredis,
  host: "192.168.99.100",
  port: 6379,
  password: "",
  db: 0,
  reconnect: :no_reconnect,
  max_queue: :infinity
