defmodule CliTest do
  use ExUnit.Case
  doctest Issues

  import Issues.CLI

  test ":help returned by entry -h" do
    assert parse_args(["-h"]) == :help
    assert parse_args(["-h", "any"]) == :help
  end

  test ":help returned by entry --help" do
    assert parse_args(["--help"]) == :help
    assert parse_args(["--help", "any"]) == :help
  end

  test "three values returned if three given" do
    assert parse_args(["user", "Project Name","20" ]) == {"user", "Project Name", 20}
  end

  test "two values returned if two given" do
    assert parse_args(["user", "Project Name" ]) == {"user", "Project Name", 4}
  end


end