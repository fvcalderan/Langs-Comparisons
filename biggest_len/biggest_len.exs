# orlando.sh
words = ["Here", "are", "some", "extraordinary", "words"]
words |> Enum.map(&String.length/1) |> Enum.max
