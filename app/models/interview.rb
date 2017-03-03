class Interview < ApplicationRecord

  belongs_to :position
  belongs_to :candidate
  has_many :interview_questions
  has_many :interview_participants
  has_many :questions, through: :interview_questions
  has_many :interviewers, through: :interview_participants

  default_scope { order("interview_date ASC") }

  scope :upcoming, -> {
    where("interview_date > ?", DateTime.now)
  }
end
