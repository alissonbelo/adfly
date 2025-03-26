defmodule BackendWeb.ErrorJSONTest do
  @moduledoc """
  Testes para o módulo BackendWeb.ErrorJSON que lida com a renderização de erros em formato JSON.
  """
  use BackendWeb.ConnCase, async: true

  alias BackendWeb.ErrorJSON

  test "renders 404" do
    assert ErrorJSON.render("404.json", %{}) == %{errors: %{detail: "Not Found"}}
  end

  test "renders 500" do
    assert ErrorJSON.render("500.json", %{}) ==
             %{errors: %{detail: "Internal Server Error"}}
  end
end
