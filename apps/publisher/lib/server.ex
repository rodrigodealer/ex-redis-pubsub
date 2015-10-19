defmodule Server.API do
  use Maru.Router
  plug Plug.Logger

  mount Server.API.Handlers.Publish
end
