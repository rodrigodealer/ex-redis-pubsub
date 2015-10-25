defmodule Server.API.Subscriber.Client.RedisClient do
  def initialize do
    IO.puts("RedisClient initialized")
    client_sub = Exredis.Sub.start
    client_sub |> Exredis.Sub.subscribe "queue", fn(msg) ->
      spawn fn -> Server.API.Subscriber.Processor.QueueProcessor.process(msg) end
    end
  end
end
