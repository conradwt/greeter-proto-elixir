defmodule GreeterProtoTest do
  use ExUnit.Case
  doctest GreeterProto

  test "greets the world" do
    assert GreeterProto.hello() == :world
  end
end
