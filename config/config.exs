# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :arvore,
  ecto_repos: [Arvore.Repo]

# Configures the endpoint
config :arvore, ArvoreWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "cjq7+5AQwaXwQDcNX3Alsq4TZwyUijGVTW8Dxcbw+lv0tboZ4LG21+8wGzxilctW",
  render_errors: [view: ArvoreWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Arvore.PubSub,
  live_view: [signing_salt: "r8IIvSGh"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
