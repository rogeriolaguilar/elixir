defmodule MyList do
  
  def binary(list, threshold) do
    Enum.map(list, &(&1 > threshold))
    |> Enum.map(fn true -> 1; false -> 0 end) 
  end

  # maximum value of list, like Enum.max
  def max([x]), do: x
  def max([head|tail]), do: max(head, max(tail)) # max(number, number) is native in Elixir
   
  # returns values from "from" to "to"... like from..to  
  def span(from, to) when from > to, do: []
  def span(from, to), do: [ from | span( from + 1 , to) ] 

end

# Running
puts_result = fn(result, name) -> IO.puts "#{name}: #{inspect result}" end

MyList.binary([2,45,4,7,5,0], 6)
|> puts_result.("binary")

MyList.max([3, 10, -100, 90, 1])
|> puts_result.("max")

MyList.span(3, 10)
|> puts_result.("span")

