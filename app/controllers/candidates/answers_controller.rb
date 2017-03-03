class Candidates::AnswersController < ApplicationController
  def index
    render json: candidate.answers
  end

  def show
    render json: answer
  end

  def average_rating_for
    render json: answer.answer_ratings.nonzero_average
  end

  private

  def candidate
    Candidate.find_by_id(params[:candidate_id])
  end

  def answer
    candidate.answers.find_by_id(params[:id])
  end
end
