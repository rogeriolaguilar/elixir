defmodule Listmap do
  
  def binary(list, threshold) do
    Enum.map(list, &(&1 > threshold))
    |> Enum.map(fn true -> 1; false -> 0 end) 
  end
end

# Running:
Listmap.binary([1,6,3,8,2,0], 5)
|> inspect
|> IO.puts
