defmodule Matsnet.Tasks.Task do
  use Ecto.Schema
  import Ecto.Changeset

  schema "tasks" do
    field :description, :string
    field :title, :string
    many_to_many :users, Matsnet.Accounts.User,
      join_through: Matsnet.UserTasks
    belongs_to :project, Matsnet.Projects.Project

    timestamps()
  end

  @doc false
  def changeset(task, attrs) do
    task
    |> cast(attrs, [:title, :description, :project_id])
    |> validate_required([:title])
  end
end
