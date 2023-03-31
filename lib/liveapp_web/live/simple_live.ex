defmodule LiveappWeb.Simple do
  use LiveappWeb, :live_view


  @impl true
  def mount(_params, _session, socket) do
    # IO.inspect(socket, limit: :infinity, structs: false)
    IO.inspect(socket, pretty: true, label: "Socket in MOUNT")
    {:ok, socket}
  end

  @impl true
  def render(assigns) do
     ~H"""
     <h1>Simple example</h1>
     """
  end

  @impl true
  def handle_params(params, _url, socket) do
    IO.inspect(params, pretty: true, label: "Params in handle params")
    {:noreply, socket}
  end

end
