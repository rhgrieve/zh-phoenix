defmodule ZhPhoenixWeb.PageController do
  use ZhPhoenixWeb, :controller
  require Ecto.Query
  alias ZhPhoenix.Repo
  alias ZhPhoenix.Post

  def index(conn, _params) do
    last = Post
    |> Post.sorted
    |> Repo.one
    render(conn, "index.html", post: last)
  end

end
