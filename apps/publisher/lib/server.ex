defmodule Server.API do
  use Maru.Router
  plug Plug.Logger

  mount Server.API.Publisher.Handlers.Publish
end
