require 'rails_helper'

RSpec.describe Course, type: :model do
  context 'attributes' do
    it "responds to name" do
      course = Course.new

      expect(course).to respond_to(:name)
    end

    it "responds to teacher" do
      course = Course.new

      expect(course).to respond_to(:teacher)
    end
  end

  context 'relationships' do
    it 'belongs to teacher' do
      teacher = Teacher.create(name: 'Frisby')
      course = Course.create(name: 'cool', teacher_id: teacher.id)

      expect(course.teacher).to eq(teacher)
    end
  end
end
