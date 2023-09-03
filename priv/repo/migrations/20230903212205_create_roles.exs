defmodule Matsnet.Repo.Migrations.CreateRoles do
  use Ecto.Migration

  def change do
    create table(:roles) do
      add :name, :citext, null: false

      timestamps()
    end

    create unique_index(:roles, [:name])
  end
end
