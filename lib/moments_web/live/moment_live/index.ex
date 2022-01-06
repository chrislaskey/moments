defmodule MomentsWeb.MomentLive.Index do
  use MomentsWeb, :live_view

  alias Moments.Entries
  alias Moments.Entries.Moment

  @impl true
  def mount(_params, _session, socket) do
    {:ok, assign(socket, :moments, list_moments())}
  end

  @impl true
  def handle_params(params, _url, socket) do
    {:noreply, apply_action(socket, socket.assigns.live_action, params)}
  end

  defp apply_action(socket, :edit, %{"id" => id}) do
    socket
    |> assign(:page_title, "Edit Moment")
    |> assign(:moment, Entries.get_moment!(id))
  end

  defp apply_action(socket, :new, _params) do
    socket
    |> assign(:page_title, "New Moment")
    |> assign(:moment, %Moment{})
  end

  defp apply_action(socket, :index, _params) do
    socket
    |> assign(:page_title, "Listing Moments")
    |> assign(:moment, nil)
  end

  @impl true
  def handle_event("delete", %{"id" => id}, socket) do
    moment = Entries.get_moment!(id)
    {:ok, _} = Entries.delete_moment(moment)

    {:noreply, assign(socket, :moments, list_moments())}
  end

  defp list_moments do
    Entries.list_moments()
  end
end
