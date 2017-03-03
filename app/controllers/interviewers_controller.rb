class InterviewersController < ApplicationController
  def index
    render json: Interviewer.all
  end

  def show
    render json: Interviewer.find_by_id(params[:id])
  end
end
