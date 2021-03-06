# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :component,
  ecto_repos: [Component.Repo]

# Configures the endpoint
config :component, ComponentWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "Gnircyu/+Kaa7rl/lRYE2SFX92IqofMRZJAdvXzGbxpj4mQNTNwUNbhEpo23r01d",
  render_errors: [view: ComponentWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Component.PubSub,
  live_view: [signing_salt: "b00oQTF+"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"

config :viewplex,
  path: "lib/component_web/components"
