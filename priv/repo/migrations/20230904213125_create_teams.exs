defmodule Matsnet.Repo.Migrations.CreateTeams do
  use Ecto.Migration

  def change do
    create table(:teams) do
      add :name, :string

      timestamps()
    end

    alter table(:users) do
      add :team_id, references(:teams), null: true
    end
  end
end
