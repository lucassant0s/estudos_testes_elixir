defmodule App.CalculatorListTest do
  use ExUnit.Case, async: true

  setup do
    {:ok, lucas: [2, 3, 5]}
  end

  @moduletag :calculator_list

  @tag :some_positive
  test "should return 10 when [2, 3, 5] by max value", %{lucas: values} do
    assert App.CalculatorList.some(values) == 10
  end

  @tag :some_negative
  test "shouldn't return 20 when [2, 3, 5] by max value", %{lucas: values} do
    refute App.CalculatorList.some(values) == 20, "This is an error!!"
  end

  @tag :some_positive_is_nil
  test "shoudn't return nil when max values" do
    assert App.CalculatorList.some(nil) == nil
  end
end
