require 'test_helper'

class InterviewersControllerTest < ActionDispatch::IntegrationTest

  test "should get a listing of all interviewers" do
    get interviewers_url
    assert_response :success
  end

  test "should get individual intervewers" do
    i = interviewers(:fleet_manager)
    get interviewer_url(i.id)
    assert_response :success
  end
end
