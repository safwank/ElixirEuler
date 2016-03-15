defmodule Problem6 do

  def run do
    list = 1..100
    square_of_sum(list) - sum_of_squares(list) == 25164150
  end

  def sum_of_squares(list), do: list |> Enum.map(&square(&1)) |> Enum.sum

  def square_of_sum(list), do: list |> Enum.sum |> square

  def square(x), do: x * x

end
