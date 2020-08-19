class Submission < ApplicationRecord
  validates :assignment, presence: true
  validates :student,    presence: true
  
  belongs_to :assignment
  belongs_to :student
  
  has_one :course, through: :assignment
end
