defmodule Matsnet.Repo.Migrations.AddNameToUsers do
  use Ecto.Migration

  def change do
    alter table(:users) do
      add :first_name, :string, null: true
      add :last_name, :string, null: true
    end
  end
end
