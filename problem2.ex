require Integer

defmodule Problem2 do

  def run do
    fib_list(999_999_999_999_999)
      |> Stream.filter(&Integer.is_even(&1))
      |> Stream.take_while(&(&1 <= 4_000_000))
      |> Enum.sum
  end

  def fib(0), do: 1
  def fib(1), do: 1
  def fib(x) do
    fib(x-1) + fib(x-2)
  end

  def fib_list(x), do: 1..x |> Stream.map(&fib(&1))

end
