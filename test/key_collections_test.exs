defmodule KeyCollectionsTest do
  use ExUnit.Case, async: false

  import Mock

  test "get_all_keys_returns_all_major_and_minor_keys" do
    a_major = [:a_major]
    a_sharp_major = [:a_sharp_major]
    b_major = [:b_major]
    c_major = [:c_major]
    c_sharp_major = [:c_sharp_major]
    d_major = [:d_major]
    d_sharp_major = [:d_sharp_major]
    e_major = [:e_major]
    f_major = [:f_major]
    f_sharp_major = [:f_sharp_major]
    g_major = [:g_major]
    g_sharp_major = [:g_sharp_major]

    a_minor = [:a_minor]
    a_sharp_minor = [:a_sharp_minor]
    b_minor = [:b_minor]
    c_minor = [:c_minor]
    c_sharp_minor = [:c_sharp_minor]
    d_minor = [:d_minor]
    d_sharp_minor = [:d_sharp_minor]
    e_minor = [:e_minor]
    f_minor = [:f_minor]
    f_sharp_minor = [:f_sharp_minor]
    g_minor = [:g_minor]
    g_sharp_minor = [:g_sharp_minor]

    with_mocks([
      {
        Key.Generator,
        [],
        [
          get_major_key: fn
            :a -> {:ok, a_major}
            :a_sharp -> {:ok, a_sharp_major}
            :b -> {:ok, b_major}
            :c -> {:ok, c_major}
            :c_sharp -> {:ok, c_sharp_major}
            :d -> {:ok, d_major}
            :d_sharp -> {:ok, d_sharp_major}
            :e -> {:ok, e_major}
            :f -> {:ok, f_major}
            :f_sharp ->{:ok,  f_sharp_major}
            :g -> {:ok, g_major}
            :g_sharp -> {:ok, g_sharp_major}
          end,

          get_minor_key: fn
            :a -> {:ok, a_minor}
            :a_sharp -> {:ok, a_sharp_minor}
            :b -> {:ok, b_minor}
            :c -> {:ok, c_minor}
            :c_sharp -> {:ok, c_sharp_minor}
            :d -> {:ok, d_minor}
            :d_sharp -> {:ok, d_sharp_minor}
            :e -> {:ok, e_minor}
            :f -> {:ok, f_minor}
            :f_sharp -> {:ok, f_sharp_minor}
            :g -> {:ok, g_minor}
            :g_sharp -> {:ok, g_sharp_minor}
          end
        ]
      }
    ]) do
      result  = Key.Collections.get_all_keys()

      assert Enum.any?(result, fn r -> r == a_major end)
      assert Enum.any?(result, fn r -> r == a_sharp_major end)
      assert Enum.any?(result, fn r -> r == b_major end)
      assert Enum.any?(result, fn r -> r == c_major end)
      assert Enum.any?(result, fn r -> r == c_sharp_major end)
      assert Enum.any?(result, fn r -> r == d_major end)
      assert Enum.any?(result, fn r -> r == d_sharp_major end)
      assert Enum.any?(result, fn r -> r == e_major end)
      assert Enum.any?(result, fn r -> r == f_major end)
      assert Enum.any?(result, fn r -> r == f_sharp_major end)
      assert Enum.any?(result, fn r -> r == g_major end)
      assert Enum.any?(result, fn r -> r == g_sharp_major end)

      assert Enum.any?(result, fn r -> r == a_minor end)
      assert Enum.any?(result, fn r -> r == a_sharp_minor end)
      assert Enum.any?(result, fn r -> r == b_minor end)
      assert Enum.any?(result, fn r -> r == c_minor end)
      assert Enum.any?(result, fn r -> r == c_sharp_minor end)
      assert Enum.any?(result, fn r -> r == d_minor end)
      assert Enum.any?(result, fn r -> r == d_sharp_minor end)
      assert Enum.any?(result, fn r -> r == e_minor end)
      assert Enum.any?(result, fn r -> r == f_minor end)
      assert Enum.any?(result, fn r -> r == f_sharp_minor end)
      assert Enum.any?(result, fn r -> r == g_minor end)
      assert Enum.any?(result, fn r -> r == g_sharp_minor end)
    end
  end
end
