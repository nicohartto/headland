defmodule Headland.Router do
  use Headland.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", Headland do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
  end

  scope "/api/v1", Headland do
    pipe_through :api

    get "/info", InfoController, :index
    resources "/artists", ArtistController, except: [:new, :edit]
  end

  # Other scopes may use custom stacks.
  # scope "/api", Headland do
  #   pipe_through :api
  # end
end
