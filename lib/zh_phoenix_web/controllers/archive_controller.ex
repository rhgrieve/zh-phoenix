defmodule ZhPhoenixWeb.ArchiveController do
  use ZhPhoenixWeb, :controller
  require Ecto.Query
  alias ZhPhoenix.Repo
  alias ZhPhoenix.Post

  def index(conn, _params) do
    all = Post
    |> Repo.all
    render(conn, "index.html", posts: all)
  end
end
