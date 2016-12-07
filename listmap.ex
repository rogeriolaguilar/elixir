defmodule Listmap do
  
  def binary(list, threshold) do
   boolean_list = Enum.map list, &(&1 > threshold)
   Enum.map boolean_list, fn true -> 1; false -> 0 end 
  end
end