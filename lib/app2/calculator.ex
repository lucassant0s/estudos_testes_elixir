defmodule App.Calculator do
  # def multiply(a, b) when is_number(a) and is_number(b) do
  #   a * b
  # end

  # def multiply(a, b) when is_nil(a) or is_nil(b) do
  #   nil
  # end

  def multiply(a, b) do
    cond do
      is_nil(a) || is_nil(b) -> nil
      true -> a * b
    end
  end
end
