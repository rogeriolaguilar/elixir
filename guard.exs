defmodule Guard do 

  def what_is(x) when is_number(x) do 
    puts "#{x} is a number"
  end
  
  def what_is(x) when is_list(x) do
    puts "#{inspect(x)} is a list"
  end 

  def puts(m), do: IO.puts m 
end

Guard.what_is [1,3,2]
