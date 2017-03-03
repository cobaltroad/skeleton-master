class Answer < ApplicationRecord
  belongs_to :candidate
  belongs_to :question
  belongs_to :interview
  has_many :answer_ratings do
    def nonzero_average
      where.not(rating: [nil, 0]).average(:rating)
    end
  end
end
