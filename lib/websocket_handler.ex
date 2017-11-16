defmodule EchoServer.WebsocketHandler do
  @behaviour :cowboy_websocket_handler

  def init({_transport, _http}, _req, _opts) do
    {:upgrade, :protocol, :cowboy_websocket}
  end

  # def terminate(_reason, _req, _state) do
  #   :ok
  # end

  def websocket_init(_transport, req, _opts) do
    {:ok, req, :undefined_state}
  end

  def websocket_terminate(_reason, _req, _state) do
    :ok
  end

  def websocket_handle(msg, req, state) do
    {:reply, msg, req, state}
  end

  def websocket_info(_info, _req, _state) do
  end
end
