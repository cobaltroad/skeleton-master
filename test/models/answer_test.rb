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
end
