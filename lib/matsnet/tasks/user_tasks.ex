defmodule Matsnet.UserTasks do
  use Ecto.Schema

  schema "user_tasks" do
    belongs_to :user, Matsnet.Accounts.User
    belongs_to :task, Matsnet.Tasks.Task
    timestamps()
  end
end
