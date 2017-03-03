class InterviewerPresenter
  def initialize(interviewer)
    @interviewer = interviewer
    @interviews  = interviewer.interviews
  end

  def present!
    return if @interviewer.blank?
    {
      name: @interviewer.name
    }
  end
end
