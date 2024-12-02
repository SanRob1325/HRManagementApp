class Attendance < ApplicationRecord
  belongs_to :user
  validates :date, presence: true
  validates :status, inclusion: { in: ['Present','Absent','Remote Work'],message: "Must be 'Present','Remote Work' or 'Absent'" }
  validates :notes, length: { maximum: 255 }, allow_blank: true
end
