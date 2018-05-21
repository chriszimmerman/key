defmodule KeyGenTest do
  use ExUnit.Case
  doctest Key.KeyGen

  test "get_major_key_a_returns_a_major_key" do
    assert Key.KeyGen.get_major_key(:a) == [:a, :b, :c_sharp, :d, :e, :f_sharp, :g_sharp]
  end

  test "get_major_key_a_sharp_returns_a_sharp_major_key" do
    assert Key.KeyGen.get_major_key(:a_sharp) == [:a_sharp, :c, :d, :d_sharp, :f, :g, :a]
  end

  test "get_minor_key_a_returns_a_minor_key" do
    assert Key.KeyGen.get_minor_key(:a) == [:a, :b, :c, :d, :e, :f, :g]
  end

  test "get_minor_key_a_sharp_returns_a_sharp_minor_key" do
    assert Key.KeyGen.get_minor_key(:a_sharp) == [:a_sharp, :c, :c_sharp, :d_sharp, :f, :f_sharp, :g_sharp]
  end
end
