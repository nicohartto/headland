defmodule Headland.ArtistView do
  use Headland.Web, :view

  def render("index.json", %{artists: artists}) do
    %{data: render_many(artists, Headland.ArtistView, "artist.json")}
  end

  def render("show.json", %{artist: artist}) do
    %{data: render_one(artist, Headland.ArtistView, "artist.json")}
  end

  def render("artist.json", %{artist: artist}) do
    %{id: artist.id,
      name: artist.name,
      bio: artist.bio,
      website: artist.website,
      years_active: artist.years_active}
  end
end
