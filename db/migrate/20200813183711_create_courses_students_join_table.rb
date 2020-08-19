class CreateCoursesStudentsJoinTable < ActiveRecord::Migration[6.0]
  def change
    create_join_table :courses, :students do |t|
      t.index :course_id
      t.index :student_id
    end
    add_index(:courses_students, [:course_id, :student_id], :unique => true)
  end
end
