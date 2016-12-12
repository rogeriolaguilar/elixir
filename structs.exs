defmodule Person do
  
  defstruct name: "", last_name: "", height: 0

  def subscribed?( person = %Person{}), do: person.subscribed
  def valid?( person = %Person{}), do: (String.length person.name) > 1 && (String.length person.last_name) > 0
end

defmodule Dog do
  defstruct name: "", owner: %Person{}

  def stray?( dog = %Dog{}), do: dog.owner.name==""
end

# iex structs.exs
# rogerio = %Person{name: "Rogério"}
# Person.valid? rogerio # > false
# rogerio = %Person{ rogerio | last_name: "Aguilar"}
# Person.valid? rogerio # > true
#
# bilu = %Dog{name: "Bilu"}
# Dog.stray? bilu # > true
# bilu = %Dog{ bilu | owner: rogerio}
# Dog.stray? bilu # > false 