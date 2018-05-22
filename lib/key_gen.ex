defmodule Key.KeyGen do
  @notes [:a, :a_sharp, :b, :c, :c_sharp, :d, :d_sharp, :e, :f, :f_sharp, :g, :g_sharp]

  def get_major_key(note) when note in @notes do
    cycle_to_base_note(note, @notes)
    |> get_major_key_notes
  end

  def get_minor_key(note) when note in @notes do
    cycle_to_base_note(note, @notes)
    |> get_minor_key_notes
  end

  defp cycle_to_base_note(note, [base_note|rest]) when note != base_note do
    cycle_to_base_note(note, rest ++ [base_note]) 
  end

  defp cycle_to_base_note(note, [base_note|rest]) when note == base_note do
    [base_note|rest]
  end

  defp get_major_key_notes(notes) do
    [
      Enum.at(notes, 0),
      Enum.at(notes, 2),
      Enum.at(notes, 4),
      Enum.at(notes, 5),
      Enum.at(notes, 7),
      Enum.at(notes, 9),
      Enum.at(notes, 11)
    ]
  end

  defp get_minor_key_notes(notes) do
    [
      Enum.at(notes, 0),
      Enum.at(notes, 2),
      Enum.at(notes, 3),
      Enum.at(notes, 5),
      Enum.at(notes, 7),
      Enum.at(notes, 8),
      Enum.at(notes, 10) 
    ]
  end
end
