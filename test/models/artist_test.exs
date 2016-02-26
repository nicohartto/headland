defmodule Headland.ArtistTest do
  use Headland.ModelCase

  alias Headland.Artist

  @valid_attrs %{bio: "some content", name: "some content", website: "some content", years_active: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Artist.changeset(%Artist{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Artist.changeset(%Artist{}, @invalid_attrs)
    refute changeset.valid?
  end
end
