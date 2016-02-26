defmodule Headland.AlbumTest do
  use Headland.ModelCase

  alias Headland.Album

  @valid_attrs %{genre: "some content", producer: "some content", recorded: "some content", released: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Album.changeset(%Album{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Album.changeset(%Album{}, @invalid_attrs)
    refute changeset.valid?
  end
end
