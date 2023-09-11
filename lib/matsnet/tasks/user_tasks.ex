defmodule Matsnet.UserTasks do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key false
  schema "user_tasks" do
    belongs_to :user, Matsnet.Accounts.User, primary_key: true
    belongs_to :task, Matsnet.Tasks.Task, primary_key: true
    timestamps()
  end

  def changeset(user_task, attrs) do
    user_task
    |> cast(attrs, [:user_id, :task_id])
    |> validate_required([:user_id, :task_id])
  end
end
