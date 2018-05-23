defmodule Key.Filter do
  def get_keys_with_notes(notes) do
    notes_as_mapset = MapSet.new(notes)

    Key.Collections.get_all_keys() 
    |> Enum.filter(fn key -> MapSet.subset?(notes_as_mapset, MapSet.new(key)) end)
  end
end
