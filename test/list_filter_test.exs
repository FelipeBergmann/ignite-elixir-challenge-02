defmodule ListFilterTest do
  use ExUnit.Case

  describe "call/1" do
    test "given empty list should return zero" do
      assert ListFilter.call([]) == 0
    end

    test "given list with one odd element should return itself value" do
      assert ListFilter.call([1]) == 1
    end

    test "given list with 4 odd elements should return 4" do
      assert ListFilter.call([1, 3, 5, 7]) == 4
    end

    test "given list with one odd element and one even number, should return 1" do
      assert ListFilter.call([1, 2]) == 1
    end

    test "given list with 4 odd elements, 3 even numbers, one string and zero should returns 4" do
      assert ListFilter.call([1, 3, 5, 7, 18, 2, 0, 4, "anyString"]) == 4
    end

    test "given list [\"1\", \"3\", \"6\", \"43\", \"banana\", \"6\", \"abc\"] should return 3" do
      assert ListFilter.call(["1", "3", "6", "43", "banana", "6", "abc"]) == 3
    end
  end
end
