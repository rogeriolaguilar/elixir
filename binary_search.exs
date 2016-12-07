defmodule Binarysearch do

  def guess(actual, range ) do
    new_range(actual, range, middle(range))
  end

  defp new_range(actual, range = min..max, middle) 
    when middle < actual,
    do: guess(actual, middle..max)

  defp new_range(actual, range = min..max, middle) 
    when middle > actual, 
    do: guess(actual, min..middle)

  defp new_range(actual, range, middle) 
    when actual == middle, 
    do: middle
  
  defp middle(min..max) do
    result = div( max + min, 2)
    IO.puts "min:#{min} max:#{max} Middle: #{result}"
    result
  end
end

IO.puts Binarysearch.guess(100, 1..1000000000000)