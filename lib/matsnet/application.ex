defmodule Matsnet.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Telemetry supervisor
      MatsnetWeb.Telemetry,
      # Start the Ecto repository
      Matsnet.Repo,
      # Start the PubSub system
      {Phoenix.PubSub, name: Matsnet.PubSub},
      # Start Finch
      {Finch, name: Matsnet.Finch},
      # Start the Endpoint (http/https)
      MatsnetWeb.Endpoint
      # Start a worker by calling: Matsnet.Worker.start_link(arg)
      # {Matsnet.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Matsnet.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    MatsnetWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
