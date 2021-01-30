defmodule Component.Repo do
  use Ecto.Repo,
    otp_app: :component,
    adapter: Ecto.Adapters.Postgres
end
