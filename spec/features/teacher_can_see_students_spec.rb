require 'rails_helper'

RSpec.feature 'Teacher can see students' do
  scenario 'in a particular course' do
    teacher = create(:teacher)
    course = create(:course, name: 'Music', teacher: teacher)
    course.students.create(name: 'Joanna')
    
    course.students.create(name: 'Steve')
    # student_1, student_2, student_3 = create_list(:student, 3, course: course)

    visit teacher_course_path(teacher, course)
    expect(page).to have_content('Joanna')
    expect(page).to have_content('Steve')
  end
end
