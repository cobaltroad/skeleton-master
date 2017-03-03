require 'test_helper'

class CandidatesControllerTest < ActionDispatch::IntegrationTest

  test "should get a listing of all candidates" do
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
    get candidate_answers_url(c.id)
    assert_response :success
  end

  test "candidate's individual answers can be viewed" do
    c = candidates(:barney_rubble)
    a = c.answers.first
    get candidate_answer_url(candidate_id: c.id, id: a.id)
    assert_response :success
  end

  test "ratings to candidate's individual answers can be viewed" do
    c = candidates(:barney_rubble)
    a = c.answers.first
    get candidate_answer_ratings_url(
      candidate_id: c.id,
      answer_id: a.id
    )

    assert_response :success
  end

  test "average value of the ratings can be viewed" do
    c = candidates(:barney_rubble)
    a = c.answers.first
    get average_rating_for_candidate_answer_url(
      candidate_id: c.id,
      id: a.id
    )

    assert_response :success
  end
end
