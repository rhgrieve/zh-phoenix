defmodule ZhPhoenixWeb.ArchiveController do
  use ZhPhoenixWeb, :controller
  require Ecto.Query
  alias ZhPhoenix.Repo
  alias ZhPhoenix.Post

  def index(conn, _params) do
    all = Repo.all(Post)
    render(conn, "index.html", posts: all)
  end
end
