defmodule OtpSystem.Incrementer do
  use GenServer

  def start_link(initial_number \\ 0) do
    GenServer.start_link(__MODULE__, initial_number, name: __MODULE__)
  end

  def incr do
    GenServer.call(__MODULE__, :incr)
  end

  def current do
    GenServer.call(__MODULE__, :current_number)
  end

  def incr_by(number) do
    GenServer.cast(__MODULE__, {:incr_by, number})
  end

  @impl true
  def init(init_arg) do
    {:ok, init_arg}
  end

  @impl true
  def handle_call(:incr, _from, current_number) do
    {:reply, current_number + 1, current_number + 1}
  end

  @impl true
  def handle_call(:current_number, _from, current_number) do
    {:reply, current_number, current_number}
  end

  @impl true
  def handle_cast({:incr_by, number}, current_number) do
    {:noreply, number + current_number}
  end
end
