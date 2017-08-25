require 'rails_helper'

RSpec.describe Teacher, type: :model do
  context 'attributes' do
    it "responds to name" do
      teacher = Teacher.new

      expect(teacher).to respond_to(:name)
    end
  end

  context 'relationships' do
    it "has many courses" do
      teacher = Teacher.create(name: 'Frisby')
      course = Course.create(name: 'cool', teacher_id: teacher.id)

      expect(teacher.courses.first).to eq(course)
    end
  end
end
