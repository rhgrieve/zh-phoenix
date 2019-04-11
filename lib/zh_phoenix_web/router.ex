defmodule ZhPhoenixWeb.Router do
  use ZhPhoenixWeb, :router

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

  scope "/", ZhPhoenixWeb do
    pipe_through :browser

    get "/", PageController, :index
    get "/archives", ArchiveController, :index
  end

  # Other scopes may use custom stacks.
  # scope "/api", ZhPhoenixWeb do
  #   pipe_through :api
  # end
end
