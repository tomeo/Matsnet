defmodule MatsnetWeb.RoleLive.Show do
  use MatsnetWeb, :live_view

  alias Matsnet.Roles

  @impl true
  def mount(_params, _session, socket) do
    {:ok, socket}
  end

  @impl true
  def handle_params(%{"id" => id}, _, socket) do
    {:noreply,
     socket
     |> assign(:page_title, page_title(socket.assigns.live_action))
     |> assign(:role, Roles.get_role!(id))}
  end

  defp page_title(:show), do: "Show Role"
  defp page_title(:edit), do: "Edit Role"
end
