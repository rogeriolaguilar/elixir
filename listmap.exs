defmodule Listmap do
  
  def binary(list, threshold) do
    Enum.map(list, &(&1 > threshold))
    |> Enum.map(fn true -> 1; false -> 0 end) 
  end

  # maximum value of list, like Enum.max
  def max([x]), do: x
  def max([head|tail]), do: max(head, max(tail)) # max(number, number) is native in Elixir
   
end