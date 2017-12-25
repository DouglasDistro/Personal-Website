use Mix.Config

# In this file, we keep production configuration that
# you likely want to automate and keep it away from
# your version control system.
#
# You should document the content of this
# file or create a script for recreating it, since it's
# kept out of version control and might be hard to recover
# or recreate for your teammates (or you later on).
config :personal, Personal.Endpoint,
  secret_key_base: "6fxGkZJhW56nO4qwP5i/DDmJUH6ebsG+Wm3Fcit3GqMn3R9NqkN3x2OIl9iPdi7t"

# Configure your database
config :personal, Personal.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "personal_prod",
  pool_size: 0
