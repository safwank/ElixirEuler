defmodule Problem3 do

  def run do
    prime_factors(600851475143) |> Enum.max
  end

  def prime_factors(x) do
    factors(x) |> Stream.filter(&prime?(&1))
  end

  def factors(x) do
    lows = 1..sqrt(x) |> Stream.filter(&divisible?(x, &1))
    highs = Stream.map(lows, &div(x, &1)) |> Enum.reverse
    Stream.concat(lows, highs) |> Stream.uniq
  end

  def prime?(0), do: false
  def prime?(1), do: false
  def prime?(2), do: true
  def prime?(x) do
    not(2..(sqrt(x)) |> Enum.any?(&(divisible?(x, &1))))
  end

  def sqrt(x), do: :math.sqrt(x) |> trunc

  def divisible?(x, y), do: rem(x, y) == 0

end
