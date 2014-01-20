defmodule BowlingTest do
  use ExUnit.Case

  test "a game with no score is a 0" do
    score = Bowling.score([0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0])

    assert score == 0
  end

  test "a game without strikes or spares is the sum of the rolls" do
    score = Bowling.score([1, 2, 1, 2, 1, 2, 1, 2, 1, 2, 1, 2, 1, 2, 1, 2, 1, 2, 1, 2])

    assert score == 30
  end

  test "strikes are 10 + the next two rolls" do
    score = Bowling.score([10, 1, 2, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0])

    assert score == 19
  end

  test "spares are 10 + the next roll" do
    score = Bowling.score([9, 1, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0])

    assert score == 14
  end

  test "a strike on the last frame is properly scored" do
    score = Bowling.score([0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 10, 10])

    assert score == 30
  end

  test "a spare on the last frame is properly scored" do
    score = Bowling.score([0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9, 1, 10])

    assert score == 20
  end

  test "a perfect game" do
    score = Bowling.score([10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10])

    assert score == 300
  end
end
