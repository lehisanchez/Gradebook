class Assignment < ApplicationRecord
  validates :name,   presence: true
  validates :course, presence: true
  
  belongs_to :course
  has_many :submissions
end
