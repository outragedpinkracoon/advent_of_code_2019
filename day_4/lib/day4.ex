defmodule Day4 do
  @moduledoc """
  Documentation for Day4.
  """

  def run([], result), do: result
  def run([h | t], result) do
    run(t, result + check_value(h))
  end

  def run(start, finish) do
    range = Enum.to_list(start..finish)
    run(range, 0)
  end

  def run([h | t]) do
    run(t, check_value(h))
  end

  def check_value(value) do
    case valid?(value) do
      true -> 1
      false -> 0
    end
  end

  def valid?(value) do
    digits = Integer.digits(value)
    gets_bigger?(digits) && has_pair?(digits)
  end

  def gets_bigger?([a, b, c, d, e, f]) do
    a <= b && b <= c && c <= d && d <= e && e <= f
  end

  def has_pair?([a, b, c, d, e, f]) do
    a == b || b == c || c == d || d == e || e == f
  end
end
