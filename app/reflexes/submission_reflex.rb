# frozen_string_literal: true

class SubmissionReflex < ApplicationReflex
  
  def create(assignment, student, score)
    Submission.create!(assignment_id: assignment, student_id: student, points: score)
  end
  
end
