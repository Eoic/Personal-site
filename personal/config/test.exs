import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :personal, PersonalWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "3oONacFbMy0GjKBM+00F65mebgAvhFJ5/tjywzw8kMtw71GleCTbawoXPof3DXKo",
  server: false

# In test we don't send emails.
config :personal, Personal.Mailer,
  adapter: Swoosh.Adapters.Test

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
