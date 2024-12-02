class PerformanceReview < ApplicationRecord
  belongs_to :employee, class_name: "User"
  belongs_to :rating, class_name: "User"

  validates :comment, presence: true
  validates :rating, inclusion: { in: 1..5 ,message: "must be between 1 to 5" }
end
