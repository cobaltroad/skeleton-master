class Candidates::AnswersController < ApplicationController
  def index
    render json: candidate.answers
  end

  def show
    render json: candidate.answers.find_by_id(params[:id])
  end

  private

  def candidate
    Candidate.find_by_id(params[:candidate_id])
  end
end
