class Student < ApplicationRecord

  devise :database_authenticatable, :rememberable, :validatable
  
  has_and_belongs_to_many :courses
  
  has_many :submissions
  
  def full_name
    self.first_name + ' ' + self.last_name
  end

end
