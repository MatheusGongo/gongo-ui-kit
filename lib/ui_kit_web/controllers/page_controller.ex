defmodule UiKitWeb.PageController do
  use UiKitWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
