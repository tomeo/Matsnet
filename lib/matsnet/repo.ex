defmodule Matsnet.Repo do
  use Ecto.Repo,
    otp_app: :matsnet,
    adapter: Ecto.Adapters.Postgres
end
