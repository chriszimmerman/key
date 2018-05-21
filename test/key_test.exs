defmodule KeyTest do
  use ExUnit.Case
  doctest Key

  test "greets the world" do
    assert Key.hello() == :world
  end
end
