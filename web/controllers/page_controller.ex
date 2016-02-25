defmodule Headland.PageController do
  use Headland.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
