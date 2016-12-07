defmodule Study do

  def time_2 do
    &{ &1 * 2}
  end

  # Ex: Study.apply.(Study.time_2, 3) : 6
  def apply(function, value) do
    function.(value)
  end

  # Ex: Study.greet("Rogerio", "Hello"); Study.("Rogerio") : "Hello Rogerio"
  def greet(name, greeting) do
    fn
      (^name) -> "#{greeting} #{name}"
      (_) -> "I don't know you..."
    end
  end

  # Different ways return a tuple with the div and remainder: Study.divrem.(13,5) : {2, 3}
  def divrem do
    fn(x, y) -> { div(x,y), rem(x, y)} end
  end

  def divrem2 do
    &{ div(&1, &2), rem(&1, &2) }
  end


  # Concat strings
  def concat do
    prefix = fn first -> ( fn second -> "#{first} #{second}" end ) end
    IO.puts(prefix.("Mr").("Channie"))
  end

end 
