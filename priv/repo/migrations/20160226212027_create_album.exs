defmodule Headland.Repo.Migrations.CreateAlbum do
  use Ecto.Migration

  def change do
    create table(:albums) do
      add :released, :string
      add :recorded, :string
      add :genre, :string
      add :producer, :string
      add :artist_id, references(:artists, on_delete: :nothing)

      timestamps
    end
    create index(:albums, [:artist_id])

  end
end
