# frozen_string_literal: true

class CourseReflex < ApplicationReflex
  def create(name, teacher_id)
    Course.create!(name: name, teacher_id: teacher_id)
  end
end
