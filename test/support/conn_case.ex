defmodule BackendWeb.ConnCase do
  @moduledoc """
  Módulo de teste para casos que requerem uma conexão HTTP.
  Fornece helpers para testes de controllers e endpoints.
  """
  use ExUnit.CaseTemplate

  using do
    quote do
      # The default endpoint for testing
      @endpoint BackendWeb.Endpoint

      use BackendWeb, :verified_routes

      # Import conveniences for testing with connections
      import Plug.Conn
      import Phoenix.ConnTest
      import BackendWeb.ConnCase
    end
  end

  setup tags do
    DataCase.setup_sandbox(tags)
    {:ok, conn: ConnTest.build_conn()}
  end
end
