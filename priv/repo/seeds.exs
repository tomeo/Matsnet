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

{:ok, user1} = Matsnet.Accounts.register_user(%{email: "user@example.com", password: "password12345", role_id: 1, first_name: "Alice", last_name: "Smith"})
{:ok, user2} = Matsnet.Accounts.register_user(%{email: "user2@example.com", password: "password12345", role_id: 2, first_name: "Bob", last_name: "Jones"})
