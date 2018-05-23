defmodule Key.Collections do
  @notes [:a, :a_sharp, :b, :c, :c_sharp, :d, :d_sharp, :e, :f, :f_sharp, :g, :g_sharp]

  def get_all_keys do
    major_keys = Enum.map(@notes, fn n -> 
      {:ok, key} = Key.Generator.get_major_key(n) 
      key
    end)
    minor_keys = Enum.map(@notes, fn n -> 
      {:ok, key} = Key.Generator.get_minor_key(n) 
      key
    end)

    major_keys ++ minor_keys
  end
end
