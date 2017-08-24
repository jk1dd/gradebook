class Student < ApplicationRecord
  has_many :student_courses
  has_many :courses, through: :student_courses
  accepts_nested_attributes_for :student_courses

  def get_student_grade(student_id, course_id)
    StudentCourse.find_by(student_id: student_id, course_id: course_id).grade
  end
end
