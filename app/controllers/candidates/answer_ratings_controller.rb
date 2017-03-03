class Candidates::AnswerRatingsController < ApplicationController
  def index
    render json: candidate_answer.answer_ratings
  end

  private

  def candidate_answer
    c = Candidate.find_by_id(params[:candidate_id])
    if c
      c.answers.find_by_id(params[:answer_id])
    end
  end
end
