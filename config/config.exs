# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :myApi,
  ecto_repos: [MyApi.Repo]

# Configures the endpoint
config :myApi, MyApiWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "TqN8alLwUCQsVtM2rXb3XE3hqe/gdS2HqfsY/diN7ckzR/eEBNiRmQ8dUMRR7nQb",
  render_errors: [view: MyApiWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: MyApi.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"

# Guardian config
config :myApi, MyApi.Guardian,
       issuer: "myApi",
       secret_key: "/3tu2MWBrp48nRPgnugCO8d+u8kvppgqaraisutdT2cGbM2A+Dk6i0Um7CLO8DBk"