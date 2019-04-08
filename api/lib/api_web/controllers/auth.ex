defmodule ApiWeb.AuthController do
  use ApiWeb, :controller

  plug Jwt.Plugs.VerifySignature

  def index(conn, _params) do
    
    conn
    |> put_resp_content_type("text/plain")
    |> send_resp(201, "Hello")
  end
end
