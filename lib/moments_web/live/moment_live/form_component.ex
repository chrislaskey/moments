defmodule MomentsWeb.MomentLive.FormComponent do
  use MomentsWeb, :live_component

  alias Moments.Entries

  @impl true
  def update(%{moment: moment} = assigns, socket) do
    changeset = Entries.change_moment(moment)

    {:ok,
     socket
     |> assign(assigns)
     |> assign(:changeset, changeset)}
  end

  @impl true
  def handle_event("validate", %{"moment" => moment_params}, socket) do
    changeset =
      socket.assigns.moment
      |> Entries.change_moment(moment_params)
      |> Map.put(:action, :validate)

    {:noreply, assign(socket, :changeset, changeset)}
  end

  def handle_event("save", %{"moment" => moment_params}, socket) do
    save_moment(socket, socket.assigns.action, moment_params)
  end

  defp save_moment(socket, :edit, moment_params) do
    case Entries.update_moment(socket.assigns.moment, moment_params) do
      {:ok, _moment} ->
        {:noreply,
         socket
         |> put_flash(:info, "Moment updated successfully")
         |> push_redirect(to: socket.assigns.return_to)}

      {:error, %Ecto.Changeset{} = changeset} ->
        {:noreply, assign(socket, :changeset, changeset)}
    end
  end

  defp save_moment(socket, :new, moment_params) do
    case Entries.create_moment(moment_params) do
      {:ok, _moment} ->
        {:noreply,
         socket
         |> put_flash(:info, "Moment created successfully")
         |> push_redirect(to: socket.assigns.return_to)}

      {:error, %Ecto.Changeset{} = changeset} ->
        {:noreply, assign(socket, changeset: changeset)}
    end
  end
end
