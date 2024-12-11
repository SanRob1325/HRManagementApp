class Department < ApplicationRecord
  has_many :employees, class_name: "User"
  validates :name, presence: true, uniqueness: true
  validates :description, presence: true
  has_many :employees, dependent: :destroy
end

class User < ApplicationRecord
  belongs_to :department, optional: true
end
