class Course < ApplicationRecord
  belongs_to :teacher
  has_many :student_courses
  has_many :students, through: :student_courses
  validates_uniqueness_of :name
end
