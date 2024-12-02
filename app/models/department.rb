class Department < ApplicationRecord
  has_many :employees, class_name: "User"
  validates :name, presence: true, uniqueness: true
end

class User < ApplicationRecord
  belongs_to :department, optional: true
end
