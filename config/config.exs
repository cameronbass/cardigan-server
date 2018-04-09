# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :cardigan_server,
  ecto_repos: [CardiganServer.Repo]

# Configures the endpoint
config :cardigan_server, CardiganServerWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "Sl7NlW6P8i43PsgehsuE+0wPSG+G2RLs1EpgwObLN7pZVDX6SLQNMoUdib4Jjxq+",
  render_errors: [view: CardiganServerWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: CardiganServer.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
