defmodule Server.API.Publisher.Client.RedisClient do
  def publish(message) do
    client = Exredis.start
    client |> Exredis.Api.publish "queue", Poison.encode!(message)
  end
end
