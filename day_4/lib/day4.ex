defmodule Day4 do
  @moduledoc """
  Documentation for Day4.
  """
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
