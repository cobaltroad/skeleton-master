require 'test_helper'

class CandidatesControllerTest < ActionDispatch::IntegrationTest

  test "should get listing of all candidates" do
    get candidates_url
    assert_response :success
  end

  test "should get individual andidates" do
    c = candidates(:barney_rubble)
    get candidate_url(c.id)
    assert_response :success
  end

  test "individual candidates have multiple answers" do
    c = candidates(:barney_rubble)
    get candidate_answers_url
    assert_response :success
  end
end
