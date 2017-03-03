require 'test_helper'

class InterviewTest < ActiveSupport::TestCase

  def setup
    create_answers_and_ratings
  end

  test "interviews have multiple questions" do
    i = interviews(:first_driver_interview)
    assert i.interview_questions.any?
  end

  test "interview questions should have answers" do
    i = interviews(:first_driver_interview)
    assert i.questions.first.answers.any?
  end

  test "interview questions should be in order" do
    i = interviews(:first_driver_interview)
    assert_equal 1, i.interview_questions.first.display_order
  end

end
