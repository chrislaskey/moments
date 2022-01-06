defmodule MomentsWeb.MomentLive.Show do
  use MomentsWeb, :live_view

  alias Moments.Entries

  @impl true
  def mount(_params, _session, socket) do
    {:ok, socket}
  end

  @impl true
  def handle_params(%{"id" => id}, _, socket) do
    {:noreply,
     socket
     |> assign(:page_title, page_title(socket.assigns.live_action))
     |> assign(:moment, Entries.get_moment!(id))}
  end

  defp page_title(:show), do: "Show Moment"
  defp page_title(:edit), do: "Edit Moment"
end
