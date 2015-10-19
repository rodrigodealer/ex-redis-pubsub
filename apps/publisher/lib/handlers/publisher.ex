defmodule Server.API.Publisher.Handlers.Publish do
  use Maru.Router
  plug Plug.Logger

  params do
    requires :queue,    type: String
    requires :message,  type: String
    requires :date,     type: String
  end

  post "/publish" do
    client = Exredis.start
    client |> Exredis.Api.publish "queue", Poison.encode!(params)
    ["hello"]
  end

end
