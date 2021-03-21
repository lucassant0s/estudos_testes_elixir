defmodule App.CalculatorTest do
  use ExUnit.Case, async: true

  setup do
    {:ok, lucas: 4, ana: 6}
  end

  @moduletag :math

  test "should return 4 when multiply 2 by 2", %{lucas: valor} do
    assert App.Calculator.multiply(2,2) == valor
  end

  test "should return 6 when multiply 2 by 3", %{ana: valor} do
    assert App.Calculator.multiply(2,3) == valor
  end

  @tag :negative
  test "should return nil when multiply 2 by nil" do
    assert App.Calculator.multiply(2, nil) == nil
  end

  @tag :negative
  test "should return nil when multiply nil by 2" do
    assert App.Calculator.multiply(nil, 2) == nil
  end

  test "shouldn't return 10 when multiply 2 by 4" do
    refute App.Calculator.multiply(2, 4) == 10, "This is an error!!"
  end
end
