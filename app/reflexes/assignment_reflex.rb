# frozen_string_literal: true

class AssignmentReflex < ApplicationReflex
  def create(name, points, course)
    Assignment.create!(name: name, points: points, course_id: course)
  end
end
