defmodule Problem5 do

  def run do
    smallest_evenly_divisible(Enum.to_list 1..20) == 232792560
  end

  def smallest_evenly_divisible(list), do: smallest_evenly_divisible(List.last(list), list)
  def smallest_evenly_divisible(x, list) do
    case list |> Enum.all?(&divisible?(x, &1)) do
      true  -> x
      false -> smallest_evenly_divisible((x + List.last(list)), list)
    end
  end

  def divisible?(x, y), do: rem(x, y) == 0

end
