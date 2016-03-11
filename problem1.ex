defmodule Problem1 do

  def run do
    max = 999
    threes = 3..max |> Stream.filter(&multiples_of?(3, &1))
    fives = 5..max |> Stream.filter(&multiples_of?(5, &1))
    Stream.concat(threes, fives) |> Stream.uniq |> Enum.sum
  end

  defp multiples_of?(x, y) do
    rem(y, x) == 0
  end

end
