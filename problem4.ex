require Integer

defmodule Problem4 do

  def run do
    largest_palindrome_product(100, 999)
  end

  def largest_palindrome_product(min, max) do
    max..min
      |> permutate(2)
      |> Stream.map(&product(&1))
      |> Stream.filter(&palindrome?(&1))
      |> Enum.max
  end

  def palindrome?(x) do
    digitized = Integer.digits x
    digitized == Enum.reverse digitized
  end

  def permutate([], _), do: [[]]
  def permutate(_,  0), do: [[]]
  def permutate(list, length) do
    for x <- list, y <- permutate(list, length-1), do: [x|y]
  end

  def product(list), do: Enum.reduce(list, 1, &(&1 * &2))

end
