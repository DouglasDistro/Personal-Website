# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :personal,
  ecto_repos: [Personal.Repo]

# Configures the endpoint
config :personal, Personal.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "7wLLZ4U4O81z9wIJyjWYfoy3eXDGP+pkMSje32HH70hOzOm2nCLwEicto4zcOj+f",
  render_errors: [view: Personal.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Personal.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
