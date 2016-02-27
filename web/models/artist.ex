defmodule Headland.Artist do
  use Headland.Web, :model

  schema "artists" do
    field :name, :string
    field :bio, :string
    field :website, :string
    field :years_active, :string
    has_many :albums, Headland.Albums

    timestamps
  end

  @required_fields ~w(name bio years_active)
  @optional_fields ~w(website)

  @doc """
  Creates a changeset based on the `model` and `params`.

  If no params are provided, an invalid changeset is returned
  with no validation performed.
  """
  def changeset(model, params \\ :empty) do
    model
    |> cast(params, @required_fields, @optional_fields)
    |> validate_length(:bio, min: 2)
    |> unique_constraint(:name)
  end
end
