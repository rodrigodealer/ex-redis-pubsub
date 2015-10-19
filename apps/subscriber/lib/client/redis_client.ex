defmodule Server.API.Subscriber.Client.RedisClient do
  def initialize do
    IO.puts("RedisClient initialized")
    client_sub = Exredis.Sub.start
    client_sub |> Exredis.Sub.subscribe "queue", fn(msg) ->
      spawn fn -> read(msg) end
    end
  end

  def read(message) do
    if elem(message, 0) == :message do
      {_, _, json, _} = message
      IO.puts "Received json"
      IO.inspect Poison.decode!(json, as: Server.API.Models.Message)
    end
  end
end
