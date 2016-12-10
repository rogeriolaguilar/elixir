defmodule Person do
  defstruct name: "", last_name: "", height: 0, subscribed: true

  def subscribed?( person = %Person{}), do: person.subscribed
  def valid?( person = %Person{}), do: (String.length person.name) > 1 && (String.length person.last_name) > 0
end

# iex person.exs
# Person.valid? %Person{name: "Rogério"} # false
# Person.valid? %Person{name: "Rogério", last_name: "L"} # true