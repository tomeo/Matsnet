defmodule Matsnet.Repo.Migrations.AddProjectToTasks do
  use Ecto.Migration

  def change do
    alter table(:tasks) do
      add :project_id, references(:projects), null: true
    end
  end
end
