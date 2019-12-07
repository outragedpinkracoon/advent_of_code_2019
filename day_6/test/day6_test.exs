defmodule Day6Test do
  use ExUnit.Case
  doctest Day6

  test "sample 1" do
    assert Day6.run([{"COM", "B"}]) == %{"B" => "COM"}
  end

  # test "sample 2" do
  #   input = [
  #     {COM, B},
  #     {B, C},
  #     {B, G},
  #     {G, H}
  #   ]

  #   output = %{
  #     "B": ["COM"],
  #     "C": ["B"],
  #     "G": ["B"],
  #     "H": ["G"]
  #   }
  #   assert Day6.run(input) == output
  # end
end
