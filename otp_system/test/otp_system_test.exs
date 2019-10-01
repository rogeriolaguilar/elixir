defmodule OtpSystemTest do
  use ExUnit.Case
  doctest OtpSystem

  test "greets the world" do
    assert OtpSystem.hello() == :world
  end
end
