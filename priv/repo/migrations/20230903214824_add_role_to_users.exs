defmodule Matsnet.Repo.Migrations.AddRoleToUsers do
  use Ecto.Migration

  def change do
    alter table(:users) do
      add :role_id, references(:roles), null: true
    end
  end
end
