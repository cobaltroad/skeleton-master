class InterviewPresenter
  def initialize(interview)
    @interview = interview
  end

  def present!
    return if @interview.blank?
    {
      date: @interview.interview_date,
      candidate: @interview.candidate,
      questions: @interview.questions
    }
  end
end

class InterviewerPresenter
  def initialize(interviewer)
    @interviewer = interviewer

    @interviews  = Interview.includes(:interview_participants)
      .where("'interview_participants.interview_id' = ?", interviewer.id)
      .limit(2)
  end

  def present!
    return if @interviewer.blank?
    interviews = @interviews.map do |i|
      InterviewPresenter.new(i).present!
    end

    {
      name: @interviewer.name,
      upcoming_interviews: interviews
    }
  end
end
