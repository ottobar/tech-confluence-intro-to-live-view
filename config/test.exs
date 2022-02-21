import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :tech_confluence_intro_to_live_view, TechConfluenceIntroToLiveViewWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "9Gd4ZVxplClFQH/o+woZYMsWilMNl0lCtJUHm7s64+1b66zni/Io9Uu3VHNOJKUL",
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
