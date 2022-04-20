defmodule TechConfluenceIntroToLiveView.ActiveColor do
  use GenServer

  @starting_color "raspberry"

  @pub_sub_name TechConfluenceIntroToLiveView.PubSub
  @pub_sub_topic Atom.to_string(__MODULE__)

  # ----------
  # Client API
  # ----------

  def assign_active_color(color) do
    GenServer.cast(__MODULE__, {:active_color, color})
  end

  def get_active_color do
    GenServer.call(__MODULE__, :active_color)
  end

  # ----------
  # Start link
  # ----------

  def start_link(_) do
    state = @starting_color
    GenServer.start_link(__MODULE__, state, name: __MODULE__)
  end

  # ----
  # Init
  # ----

  def init(state) do
    {:ok, state}
  end

  # -----------
  # Handle call
  # -----------

  def handle_call(:active_color, _from, state) do
    color = state
    {:reply, color, state}
  end

  # -----------
  # Handle cast
  # -----------

  def handle_cast({:active_color, color}, _state) do
    state = color
    broadcast({:color_changed, color})
    {:noreply, state}
  end

  # ------
  # PubSub
  # ------

  def subscribe do
    Phoenix.PubSub.subscribe(@pub_sub_name, @pub_sub_topic)
  end

  defp broadcast(message) do
    Phoenix.PubSub.broadcast(@pub_sub_name, @pub_sub_topic, message)
  end
end
