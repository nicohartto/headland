defmodule Headland.Album do
  use Headland.Web, :model

  schema "albums" do
    field :released, :string
    field :recorded, :string
    field :genre, :string
    field :producer, :string
    belongs_to :artist, Headland.Artist

    timestamps
  end

  @required_fields ~w(released genre)
  @optional_fields ~w(recorded producer)

  @doc """
  Creates a changeset based on the `model` and `params`.

  If no params are provided, an invalid changeset is returned
  with no validation performed.
  """
  def changeset(model, params \\ :empty) do
    model
    |> cast(params, @required_fields, @optional_fields)
  end
end
