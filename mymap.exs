defmodule Mymap do

  def mapsum(list, fun) do
    _mapsum(list, fun, 0)    
  end


  defp _mapsum([], _fun, acc ), do: acc
  defp _mapsum([ head | tail ], fun, acc), do: _mapsum( tail, fun, fun.(head) + acc)
end

list = [1,3,4]
IO.puts Mymap.mapsum(list, &(&1 * &1))