defmodule ArvoreWeb.HelloController do
    use ArvoreWeb, :controller
  
    def index(conn, _params) do
      render(conn, "index.html")
    end
  end