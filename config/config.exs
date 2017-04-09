# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :crowd_scored,
  ecto_repos: [CrowdScored.Repo]

# Configures the endpoint
config :crowd_scored, CrowdScored.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "FSAP2DiyaDzZk3M4PqCVswUHS0a+m50AWCwHypxKZjVgDjPaE/bj6D01fQiIvSZZ",
  render_errors: [view: CrowdScored.ErrorView, accepts: ~w(html json)],
  pubsub: [name: CrowdScored.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
