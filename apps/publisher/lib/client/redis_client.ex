defmodule Server.API.Publisher.Client.RedisClient do
  def publish(message) do
    IO.inspect message
    # client = Exredis.start
    # client |> Exredis.Api.publish "foo", message
  end
end
