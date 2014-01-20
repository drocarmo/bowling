defmodule Bowling do
  def score(rolls) do
    score(rolls, 0)
  end

  defp score([a,b,c], total) when a == 10 or a + b == 10 do
    total + a + b + c
  end

  defp score([], total) do
    total
  end

  defp score([10,a,b|rest], total) do
    score([a,b|rest], total + 10 + a + b)
  end

  defp score([a,b,c|rest], total) when a + b == 10 do
    score([c|rest], total + 10 + c)
  end

  defp score([a,b|rest], total) do
    score(rest, total + a + b)
  end
end
