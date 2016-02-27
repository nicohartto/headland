defmodule Headland.Repo.Migrations.ChangeArtistNameToUnique do
  use Ecto.Migration

  def change do
    create unique_index(:artists, [:name])
  end
end
