defmodule Server.API.Handlers.Publish do
  use Maru.Router
  plug Plug.Logger

  post "/publish" do
    client = Exredis.start
    client |> Exredis.Api.publish "foo", "Hello World!"
    ["hello"]
  end

end
