defmodule MyMap do
  @tall_people_height 1.75

  def tall_people(people) do
    for person = %{ height: height } <- people, height >= @tall_people_height, do: person  
  end

  def call_mister_the_tall_people(people) do
    for person = %{ name: name} <- tall_people(people), true, do: %{ person|name: "Mr #{name}" }
  end
end

#Run
people = [
  %{ name: "Chuck", last_name: "Norris", height: 1.78 },
  %{ name: "Shakira", last_name: "Ripoll", height: 1.57 },
  %{ name: "Bruno", last_name: "Mars", height: 1.65},
  %{ name: "Santos", last_name: "Dumont", height: 1.52},
  %{ name: "Rogério", last_name: "Aguilar", height: 1.75 }
 ]

puts_result = fn(result, name) -> IO.puts "#{name}: #{inspect result}" end


MyMap.tall_people(people)
|> puts_result.("tall people")

MyMap.call_mister_the_tall_people(people)
|> puts_result.( "Mr")
