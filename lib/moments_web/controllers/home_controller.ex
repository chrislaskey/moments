defmodule MomentsWeb.HomeController do
  use MomentsWeb, :controller

  def index(conn, _params) do
    assigns = []

    render(conn, "index.html", assigns)
  end
end
