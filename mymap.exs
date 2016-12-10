defmodule Mymap do

  def mapsum([], _function), do: 0
  def mapsum([head | tail] , function), do: function.(head) + mapsum(tail, function)
  
end

list = [1,3,4]
IO.puts Mymap.mapsum(list, &(&1 * &1))