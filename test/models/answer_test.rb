require 'test_helper'

class AnswerTest < ActiveSupport::TestCase

  test "answers should have ratings" do
    a = answers(:bulldoze)
    assert_respond_to a, :answer_ratings
  end

  test "answer ratings should have a nonzero average" do
    a = answers(:bulldoze)
    assert_respond_to a.answer_ratings, :nonzero_average
  end

  test "nonzero average calculates an average" do
    a = answers(:bulldoze)
    create_ratings(
      a,
      {
        fleet_manager: 1,
        warehouse: 2,
        hr: 3,
        union: 4
      }
    )
    assert_equal a.answer_ratings.nonzero_average, 2.5
  end

  test "ignore zero and nil values in the average" do
    a = answers(:bulldoze)
    create_ratings(
      a,
      {
        fleet_manager: 1,
        warehouse: 0,
        hr: nil
      }
    )
    assert_equal a.answer_ratings.nonzero_average, 1.0
  end

  test "returns nil if there are all zero or nil ratings" do
    a = answers(:bulldoze)
    create_ratings(
      a,
      {
        fleet_manager: 0,
        warehouse: 0,
        hr: nil,
        union: nil
      }
    )
    assert_nil a.answer_ratings.nonzero_average
  end
end
