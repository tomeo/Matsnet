# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Matsnet.Repo.insert!(%Matsnet.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

Matsnet.Roles.create_role(%{name: "Junior Developer"})
Matsnet.Roles.create_role(%{name: "Developer"})
Matsnet.Roles.create_role(%{name: "Senior Developer"})
Matsnet.Roles.create_role(%{name: "Solution Architect"})

Matsnet.Teams.create_team(%{name: "Team 1"})
Matsnet.Teams.create_team(%{name: "Team 2"})
Matsnet.Teams.create_team(%{name: "Team 3"})
Matsnet.Teams.create_team(%{name: "Team 4"})

Matsnet.Projects.create_project(%{title: "Project 1"})
Matsnet.Projects.create_project(%{title: "Project 2"})
Matsnet.Projects.create_project(%{title: "Project 3"})
Matsnet.Projects.create_project(%{title: "Project 4"})

Matsnet.Tasks.create_task(%{title: "Task 1"})
Matsnet.Tasks.create_task(%{title: "Task 2"})
Matsnet.Tasks.create_task(%{title: "Task 3"})
Matsnet.Tasks.create_task(%{title: "Task 4"})

{:ok, user1} = Matsnet.Accounts.register_user(%{email: "user@example.com", password: "password12345", role_id: 1, first_name: "Alice", last_name: "Smith", team_id: 1})
{:ok, user2} = Matsnet.Accounts.register_user(%{email: "user2@example.com", password: "password12345", role_id: 2, first_name: "Bob", last_name: "Jones", team_id: 2})

Matsnet.Repo.insert(%Matsnet.UserTasks{user_id: user1.id, task_id: 1})
Matsnet.Repo.insert(%Matsnet.UserTasks{user_id: user1.id, task_id: 2})
Matsnet.Repo.insert(%Matsnet.UserTasks{user_id: user2.id, task_id: 2})
Matsnet.Repo.insert(%Matsnet.UserTasks{user_id: user2.id, task_id: 3})
