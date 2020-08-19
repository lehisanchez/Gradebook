require 'faker'

# =================================================================================
# Teachers
# =================================================================================
10.times do |i|
  
  if i == 0
    first_name = "Steve"
    last_name  = "Jobs"
    email      = "teacher@school.edu"
    password   = "password"
    avatar     = Faker::Avatar.image
  else 
    first_name = Faker::Name.first_name
    last_name  = Faker::Name.last_name
    email      = Faker::Internet.safe_email(name: "#{first_name} #{last_name}")
    password   = Faker::Crypto.md5
    avatar     = Faker::Avatar.image
  end
  
  Teacher.create!( first_name: first_name, last_name: last_name, email: email, password: password, password_confirmation: password, avatar: avatar)

  3.times do
    
    Teacher.last.courses.create!( name:Faker::Educator.course_name )
        
    5.times do
      Course.last.assignments.create( name: "Book Review: #{Faker::Book.title}", description: "Write a 500-word paper on what you read this week.", points: 20)
    end
    
    2.times do
      Course.last.assignments.create( name: "Exam: #{Faker::Book.author}", description: "#{Faker::Book.author} and their literary contribution to #{Faker::Book.genre}", points: 100)
    end
    
  end
  
end



# =================================================================================
# Students
# =================================================================================

course_index = 1

100.times do |i|
  
  if i == 0
    first_name = "Bill"
    last_name  = "Gates"
    email      = "student@school.edu"
    password   = "password"
    avatar     = Faker::Avatar.image
  else
    first_name = Faker::Name.first_name
    last_name  = Faker::Name.last_name
    email      = Faker::Internet.safe_email(name: "#{first_name} #{last_name}")
    password   = Faker::Crypto.md5
    avatar     = Faker::Avatar.image
  end
  
  Student.create!( first_name: first_name, last_name: last_name, email: email, password: password, password_confirmation: password, avatar: avatar)
  
  Course.where(id: course_index..(course_index+2)).each do |course|
    
    Student.last.courses << course
    
    if i != 0
      course.assignments.each do |assignment|
        Submission.create!(assignment: assignment, student: Student.last, points: assignment.points*rand(0.8..1).round(1))
      end
    end
    
  end

  if [9,19,29,39,49,59,69,79,89,99,109].include? i
    course_index += 3
  end

end