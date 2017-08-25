require 'rails_helper'

RSpec.describe StudentCourse, type: :model do
  context 'attributes' do
    it "responds to student" do
      student_course = StudentCourse.new

      expect(student_course).to respond_to(:student)
    end

    it "responds to course" do
      student_course = StudentCourse.new

      expect(student_course).to respond_to(:course)
    end

    it "responds to grade" do
      student_course = StudentCourse.new

      expect(student_course).to respond_to(:grade)
    end
  end

end
