require 'test_helper'
require_relative '../../app/presenters/interviewer_presenter'

class InterviewerPresenterTest < ActiveSupport::TestCase
  def presenter(role)
    i = interviewers(role)
    p = InterviewerPresenter.new(i).present!
  end

  test "presenter exists" do
    p = presenter(:fleet_manager)
    assert_not_nil p
  end
end
