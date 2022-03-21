import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :ui_kit, UiKitWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "D91sFRGkjS8YYHJp640QGzt3VGufbPTyaBbpdr3nwYdYE7cVRthuCtgepb5RWVCK",
  server: false

# In test we don't send emails.
config :ui_kit, UiKit.Mailer,
  adapter: Swoosh.Adapters.Test

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
