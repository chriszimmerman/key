defmodule KeyFilterTest do
  use ExUnit.Case

  import Mock

  test "get_keys_with_notes" do
    notes = [:d]
    key_with_d_note = [:d]

    with_mocks([
      {
        Key.Collections,
        [],
        [
          get_all_keys: fn
            -> [key_with_d_note]
          end
        ]
      }
    ]) do
      result  = Key.Filter.get_keys_with_notes(notes)

      assert Enum.any?(result, fn r -> r == key_with_d_note end)
    end
  end

  test "get_keys_with_notes_filters_out_keys_that_do_not_have_all_notes_passed_in" do
    notes = [:b, :d]
    key_with_b_note_but_not_d_note = [:b]
    key_with_d_note_but_not_b_note = [:d]
    key_with_neither_b_nor_d_note = [:a]
    key_with_both_b_and_d_note = [:b, :d]

    with_mocks([
      {
        Key.Collections,
        [],
        [
          get_all_keys: fn
          -> [
            key_with_b_note_but_not_d_note,
            key_with_d_note_but_not_b_note,
            key_with_neither_b_nor_d_note,
            key_with_both_b_and_d_note
          ]
          end
        ]
      }
    ]) do
      result  = Key.Filter.get_keys_with_notes(notes)

      assert Enum.count(result) == 1
      assert List.first(result) == key_with_both_b_and_d_note
    end
  end
end
