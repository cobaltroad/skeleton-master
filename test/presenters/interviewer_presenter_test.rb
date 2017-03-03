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

  test "presenter shows the name key" do
    p = presenter(:fleet_manager)
    assert_includes p.keys, :name
  end

  test "presenter shows the upcoming interviews key" do
    p = presenter(:fleet_manager)
    assert_includes p.keys, :upcoming_interviews
  end
end
