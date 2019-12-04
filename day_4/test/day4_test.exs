defmodule Day4Test do
  use ExUnit.Case
  doctest Day4

  test "run" do
    assert Day4.run(156218, 652527) == 1694
  end

  test "#valid?" do
    assert Day4.valid?(111111) == true
    assert Day4.valid?(111123) == true
    assert Day4.valid?(223450) == false
    assert Day4.valid?(123789) == false
  end

  test "#gets_bigger" do
    assert Day4.gets_bigger?([1, 1, 1, 1, 2, 3]) == true
    assert Day4.gets_bigger?([2, 2, 3, 4, 5, 0]) == false
    assert Day4.gets_bigger?([1, 1, 1, 1, 1, 1]) == true
  end

  test "#has_pair?" do
    assert Day4.has_pair?([1, 1, 1, 1, 2, 3]) == true
    assert Day4.has_pair?([2, 2, 3, 4, 5, 0]) == true
    assert Day4.has_pair?([1, 2, 3, 7, 8, 9]) == false
  end
end

# range 156218-652527
