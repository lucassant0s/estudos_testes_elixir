defmodule App.CalculatorList do
  def some(values) when is_list(values) do
    _ = values
    |> Enum.map(&(&1))
    |> Enum.reduce(&(&1 + &2))
  end

  def some(values) when is_nil(values) do
    nil
  end
end
