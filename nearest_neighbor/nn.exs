# orlando.sh
points = [[1, 2, 3], [3, 4, 5], [5, 6, 7]]
qpoint = [3, 6, 5]
points |> Enum.find_index(fn a -> a == points |> Enum.reverse |> Enum.min_by(fn x -> x |> Enum.zip_with(qpoint, fn y, z -> :math.pow(y - z, 2) end) |> Enum.sum |> :math.pow(0.5) end) end)
