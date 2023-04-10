defmodule LiveappWeb.PostLive.Index do
  use LiveappWeb, :live_view

  alias Liveapp.Timeline
  alias Liveapp.Timeline.Post

  @impl true
  def mount(_params, _session, socket) do
    # IO.inspect(socket, limit: :infinity, structs: false)
    IO.inspect(socket, pretty: true, label: "Socket in MOUNT")
    {:ok, stream(socket, :posts, Timeline.list_posts())}
  end

  @impl true
  def handle_params(params, _url, socket) do
    IO.inspect(params, pretty: true, label: "Params in handle params")
    {:noreply, assign(socket, :numposts, length(Timeline.list_posts()))}
  end
end
