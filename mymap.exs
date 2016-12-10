defmodule MyMap do
  @tall_people_height 1.75

  def tall_people(people) do
    for person = %{ height: height } <- people, height >= @tall_people_height, do: person  
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


MyMap.tall_people(people)
|> IO.inspect