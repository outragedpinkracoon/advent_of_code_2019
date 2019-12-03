defmodule Day3 do
  @moduledoc """
  Documentation for Day3.
  """

  def run(total, []), do: total
  def run([mass | t]) do
    mass
    |> calculate
    |> run(t)
  end
  def run(total, [mass | t]) do
    mass
      |> calculate
      |> sum(total)
      |> run(t)
  end

  def sum(amount, total), do: amount + total
  def calculate(mass), do: div(mass, 3) - 2
end

# For a mass of 12, divide by 3 and round down to get 4, then subtract 2 to get 2.
