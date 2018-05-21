defmodule Key.Signatures do
  @a_major [:a, :b, :c_sharp, :d, :e, :f_sharp, :g_sharp]
  @a_sharp_major [:a_sharp, :c, :d, :d_sharp, :f, :g, :a]
  @b_major [:b, :c_sharp, :d_sharp, :e, :f_sharp, :g_sharp, :a_sharp]
  @c_major [:c, :d, :e, :f, :g, :a, :b]
  @c_sharp_major [:c_sharp, :d_sharp, :f, :f_sharp, :g_sharp, :a_sharp, :c]
  @d_major [:d, :e, :f_sharp, :g, :a, :b, :c_sharp]
  @d_sharp_major [:d_sharp, :f, :g, :g_sharp, :a_sharp, :c, :d]
  @e_major [:e, :f_sharp, :g_sharp, :a, :b, :c_sharp, :d_sharp]
  @f_major [:f, :g, :a, :a_sharp, :c, :d, :e]
  @f_sharp_major [:f_sharp, :g_sharp, :a_sharp, :b, :c_sharp, :d_sharp, :f]
  @g_major [:g, :a, :b, :c, :d, :e, :f_sharp]
  @g_sharp_major [:g_sharp, :a_sharp, :c, :c_sharp, :d_sharp, :f, :g]

  @keys [
    @a_major, 
    @a_sharp_major, 
    @b_major,
    @c_major,
    @c_sharp_major,
    @d_major,
    @d_sharp_major,
    @e_major,
    @f_major,
    @f_sharp_major,
    @g_major,
    @g_sharp_major
  ]

  def get_keys do
    @keys
  end
end
