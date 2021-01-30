defmodule ComponentWeb.PageController do
  use ComponentWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
