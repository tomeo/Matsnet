defmodule Matsnet.TasksFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Matsnet.Tasks` context.
  """

  @doc """
  Generate a task.
  """
  def task_fixture(attrs \\ %{}) do
    {:ok, task} =
      attrs
      |> Enum.into(%{
        description: "some description",
        title: "some title"
      })
      |> Matsnet.Tasks.create_task()

    task
  end
end
