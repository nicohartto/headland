ExUnit.start

Mix.Task.run "ecto.create", ~w(-r Headland.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r Headland.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(Headland.Repo)

