defmodule ZhPhoenixWeb.PageController do
  use ZhPhoenixWeb, :controller
  import Ecto.Query, only: [from: 2]
  alias ZhPhoenix.Repo
  alias ZhPhoenix.Post

  def index(conn, _params) do
    result = Post
    |> Post.sorted
    |> Repo.one
    
    render(conn, "index.html", post: result)
  end
end
