ExUnit.start

Mix.Task.run "ecto.create", ~w(-r Site.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r Site.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(Site.Repo)

