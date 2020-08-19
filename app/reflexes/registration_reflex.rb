# frozen_string_literal: true

class RegistrationReflex < ApplicationReflex
  
  def create(student,course)
    Student.find(student).courses << Course.find(course)
  end

  def destroy(student,course)
    Student.find(student).courses.delete(Course.find(course))
    Course.find(course).submissions.where(student: student).delete_all
  end
  
end
