defmodule CrowdScored.Router do
  use CrowdScored.Web, :router

  pipeline :browser do
    plug :accepts, ["html", "json"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", CrowdScored do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
    get "/transform", PageController, :show

    resources "/scores", ScoreController, only: [:index, :create]
  end

  # Other scopes may use custom stacks.
  # scope "/api", CrowdScored do
  #   pipe_through :api
  # end
end
