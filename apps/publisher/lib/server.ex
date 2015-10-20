defmodule Server.API do
  use Maru.Router
  plug Plug.Logger

  mount Server.API.Publisher.Handlers.Publish

  rescue_from Maru.Exceptions.InvalidFormatter, as: e do
    status 400
    %{:error => "#{e.param}: #{e.reason}"}
  end

  rescue_from :all do
    status 500
    %{:error => "Server Error"}
  end
end
