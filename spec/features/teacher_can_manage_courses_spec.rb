require 'rails_helper'

RSpec.feature "Teacher can manage courses" do
  scenario 'by adding a course' do
    teacher = create(:teacher)
    visit teacher_courses_path(teacher)

    click_on 'Add a course'
    expect(current_path).to eq(new_teacher_course_path(teacher))

    fill_in 'Course Name', with: 'Spanish II'
    click_on 'Submit'

    expect(current_path).to eq(teacher_courses_path(teacher))
    expect(page).to have_content('Spanish II')
  end

  scenario 'by deleting a course' do
    teacher = create(:teacher)
    course = create(:course, name: 'Music', teacher: teacher)

    visit teacher_courses_path(teacher)
    expect(page).to have_content('Music')

    click_on "Delete Course"

    expect(current_path).to eq(teacher_courses_path(teacher))
    expect(page).to_not have_content('Music')
  end

  scenario 'by updating a course' do
    teacher = create(:teacher)
    course = create(:course, name: 'Music', teacher: teacher)

    visit teacher_courses_path(teacher)
    expect(page).to have_content('Music')

    click_on 'Edit Course'

    expect(current_path).to eq(edit_teacher_course_path(teacher, course))

    fill_in 'Course Name', with: 'Spanish II'
    click_on 'Submit'

    expect(current_path).to eq(teacher_courses_path(teacher))
    expect(page).to have_content('Spanish II')
  end
end
