defmodule Headland.Repo.Migrations.CreateArtist do
  use Ecto.Migration

  def change do
    create table(:artists) do
      add :name, :string
      add :bio, :string
      add :website, :string
      add :years_active, :string

      timestamps
    end

  end
end
