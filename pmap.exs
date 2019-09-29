defmodule ParallelMap do
  def pmap(collection, func) do
    collection
    |> Enum.map(&(Task.async( fn -> func.(&1) end)))
    |> Enum.map(&(Task.await(&1)))
  end
end

# a function the let 1 second to run
func = fn(a) -> Process.sleep(1_000); a+1 end

:timer.tc(ParallelMap, :pmap,  [1..5, func]) # run in 1 second
:timer.tc(Enum, :map, [1..5, func]) # run in 5 seconds
