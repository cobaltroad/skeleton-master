require 'test_helper'

class InterviewerPresenterTest < ActiveSupport::TestCase
  test "presenter exists" do
    i = interviewers(:fleet_manager)
    p = InterviewerPresenter.new(i).present!
    assert_equal i.as_json, p
  end
end
