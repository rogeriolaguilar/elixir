defmodule Binarysearch do

  def guess(actual, range ) do
    new_range(actual, range, middle(range))
  end

  defp new_range(actual, _..max, middle) 
    when middle < actual,
    do: guess(actual, middle..max)

  defp new_range(actual, min.._, middle) 
    when middle > actual, 
    do: guess(actual, min..middle)

  defp new_range(actual, _, middle) 
    when actual == middle, 
    do: middle
  
  defp middle(min..max) do
    result = div( max + min, 2)
    IO.puts "min:#{min} max:#{max} Middle: #{result}"
    result
  end
end

IO.puts Binarysearch.guess(273, 1..1000 )