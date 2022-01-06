defmodule Moments.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    Moments.Release.create_and_migrate_and_seed_data_stores()

    children = [
      # Start the Ecto repository
      Moments.Repo,
      # Start the Telemetry supervisor
      MomentsWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: Moments.PubSub},
      # Start the Endpoint (http/https)
      MomentsWeb.Endpoint
      # Start a worker by calling: Moments.Worker.start_link(arg)
      # {Moments.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Moments.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    MomentsWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
