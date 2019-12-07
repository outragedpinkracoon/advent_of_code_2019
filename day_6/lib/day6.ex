defmodule Day6 do
  @moduledoc """
  Documentation for Day6.
  """
  def run(result \\ %{}, _)

  def run(result, []), do: result
  def run(result, [h | t]) do
    update(h, result) |> run(t)
  end

  def update({orbitted, orbiter}, result) do
    Map.put(result, orbiter, orbitted)
  end
end
