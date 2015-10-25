defmodule Server.API.Subscriber.Processor.QueueProcessor do
  def process(message) do
    if elem(message, 0) == :message do
      {_, _, json, _} = message
      get_queue_requests(Poison.decode!(json, as: Server.API.Models.Message))
    end
  end

  def get_queue_requests(message) do
    client = Exredis.start
    list = client |> Exredis.query ["LRANGE", message.queue, 0, -1]
    Enum.map(list, fn(item) ->
      IO.inspect(item)
    end)
  end
end
