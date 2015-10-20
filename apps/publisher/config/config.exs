use Mix.Config

config :maru, Server.API,
  http: [port: 8880]

config :exredis,
  host: "pub-redis-17076.us-east-1-4.4.ec2.garantiadata.com",
  port: 17076,
  password: "TpKFOfaTl53hLw3H",
  db: 0,
  reconnect: :no_reconnect,
  max_queue: :infinity
