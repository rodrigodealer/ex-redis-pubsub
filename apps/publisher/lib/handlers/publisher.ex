defmodule Server.API.Publisher.Handlers.Publish do
  use Maru.Router
  plug Plug.Logger

  params do
    requires :queue,    type: String
    requires :message,  type: String
    requires :date,     type: String
  end

  post "/publish" do
    Server.API.Publisher.Client.RedisClient.publish(params)
    status 202
    params
  end

end
