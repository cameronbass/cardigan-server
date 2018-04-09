defmodule CardiganServerWeb.Router do
  use CardiganServerWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", CardiganServerWeb do
    pipe_through :api
  end
end
