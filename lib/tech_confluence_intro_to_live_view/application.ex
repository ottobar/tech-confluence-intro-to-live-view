defmodule TechConfluenceIntroToLiveView.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Telemetry supervisor
      TechConfluenceIntroToLiveViewWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: TechConfluenceIntroToLiveView.PubSub},
      # Start the Endpoint (http/https)
      TechConfluenceIntroToLiveViewWeb.Endpoint,
      # Start a worker by calling: TechConfluenceIntroToLiveView.Worker.start_link(arg)
      # {TechConfluenceIntroToLiveView.Worker, arg}
      TechConfluenceIntroToLiveView.ActiveColor
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: TechConfluenceIntroToLiveView.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    TechConfluenceIntroToLiveViewWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
