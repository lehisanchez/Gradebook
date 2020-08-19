class DashboardController < ApplicationController
  before_action :authenticate_student!, only: [:student]
  before_action :authenticate_teacher!, only: [:teacher]
  
  def student
    @courses = current_student.courses
    @columns = ['course','teacher','grade']
  end

  def teacher
    @courses = current_teacher.courses
    @columns = ['course','enrolled','average']
  end
end
