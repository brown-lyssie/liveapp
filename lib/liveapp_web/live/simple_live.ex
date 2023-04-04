defmodule LiveappWeb.Simple do
  use LiveappWeb, :live_view


  @impl true
  def mount(_params, _session, socket) do
    {:ok, socket}
  end

  @impl true
  def render(assigns) do
     ~H"""
     <h1>Simple example</h1>
     """
  end

  @impl true
  def handle_params(_params, _url, socket) do
    {:noreply, socket}
  end

end
