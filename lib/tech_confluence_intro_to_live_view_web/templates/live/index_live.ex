defmodule TechConfluenceIntroToLiveViewWeb.IndexLive do
  use TechConfluenceIntroToLiveViewWeb, :live_view

  # @colors %{
  #   "byzantine" => "bg-byzantine-500",
  #   "indigo-dye" => "bg-indigo-dye-500",
  #   "raspberry" => "bg-raspberry-500",
  #   "slate-blue" => "bg-slate-blue-500"
  # }

  def mount(_params, _session, socket) do
    socket = assign(socket, active_color: "raspberry")

    {:ok, socket}
  end

  def handle_event("change-color", %{"color" => color}, socket) do
    socket = assign(socket, active_color: color)

    {:noreply, socket}
  end

  defp bg_color(color), do: "bg-" <> color <> "-500"

  defp bg_transparent_unless_active_color(active_color, active_color) do
    "bg-" <> active_color <> "-500"
  end

  defp bg_transparent_unless_active_color(_active_color, _color), do: "bg-transparent"

  defp font_bold_if_active_color(active_color, active_color), do: "font-bold"
  defp font_bold_if_active_color(_active_color, _color), do: nil
end
