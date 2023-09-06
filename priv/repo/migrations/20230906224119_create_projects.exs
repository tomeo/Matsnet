defmodule Matsnet.Repo.Migrations.CreateProjects do
  use Ecto.Migration

  def change do
    create table(:projects) do
      add :title, :string, null: false
      add :description, :string, null: true

      timestamps()
    end
  end
end
