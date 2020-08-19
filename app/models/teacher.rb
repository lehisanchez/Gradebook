class Teacher < ApplicationRecord
  
  devise :database_authenticatable, :rememberable, :validatable
  
  has_many :courses
  
  def full_name
    self.first_name + ' ' + self.last_name
  end
  
end
