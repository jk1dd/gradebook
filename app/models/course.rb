class Course < ApplicationRecord
  belongs_to :teacher
  has_many :student_courses
  has_many :students, through: :student_courses
  validates_uniqueness_of :name

  def average_grade(course_id)
    grades = StudentCourse.where(course_id: course_id)
    grades == [] ? 0 : grades.map {|s| s.grade}.reduce(&:+).to_f / grades.count
  end
end
