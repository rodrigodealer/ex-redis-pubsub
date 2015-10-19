defmodule API.Subscriber.Client do
  def initialize do
    IO.puts("RedisClient initialized")
    client_sub = Exredis.Sub.start
    client_sub |> Exredis.Sub.subscribe "foo", fn(msg) ->
      spawn fn -> read(msg) end
    end
  end

  def read(message) do
    IO.puts "Received"
    IO.inspect message
  end
end
