defmodule Matsnet.Repo.Migrations.AddUserTasks do
  use Ecto.Migration

  def change do
    create table(:user_tasks, primary_key: false) do
      add :user_id, references(:users), primary_key: true
      add :task_id, references(:tasks), primary_key: true

      timestamps()
    end
  end
end
