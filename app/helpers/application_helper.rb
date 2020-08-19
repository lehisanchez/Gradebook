module ApplicationHelper
  
  def flash_class(level)
    case level
      when 'notice'  then "flex items-center bg-blue-500   text-white text-sm font-bold px-4 py-3"
      when 'success' then "flex items-center bg-green-500  text-white text-sm font-bold px-4 py-3"
      when 'error'   then "flex items-center bg-red-500    text-white text-sm font-bold px-4 py-3"
      when 'alert'   then "flex items-center bg-orange-400 text-white text-sm font-bold px-4 py-3"
    end
  end
  
  
  def student_course_percentage_grade(student,course)
    
    a = course.assignments.sum(:points)
    b = course.submissions.where(student: student).sum(:points)
    
    grade = ((b.to_f / a.to_f) * 100).round(2)
    
    return grade.round(1)
    
  end
  
  
  def student_course_letter_grade(student,course)
    convert_to_letter_grade(student_course_percentage_grade(student,course))
  end
  
  
  def course_average_percentage_grade(course)
    
    grades = []
    
    course.students.each do |student|
      grades << student_course_percentage_grade(student,course)
    end
    
    if !grades.empty?
      grade = grades.sum(0.0) / grades.size
    else
      grade = 0
    end
    
    return grade.round(1)

  end
  
  
  private
  
  def convert_to_letter_grade(score)
    if score >= 93
        return "A"
    elsif score >= 90 and score < 93
        return "A-"
    elsif score >= 87 and score < 90
        return "B+"
    elsif score >= 83 and score < 87
        return "B"
    elsif score >= 80 and score < 83
        return "B-"
    elsif score >= 77 and score < 80
        return "C+"
    elsif score >= 73 and score < 77
        return "C"
    elsif score >= 70 and score < 73
        return "C-"
    elsif score >= 67 and score < 70
        return "D+"
    elsif score >= 63 and score < 67
        return "D"
    elsif score >= 60 and score < 63
        return "D-"
    else
      return "F"
    end
  end
  
end
