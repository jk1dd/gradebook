require 'rails_helper'

RSpec.feature "Teacher can manage courses" do
  scenario 'by adding a course' do
    teacher = create(:teacher)

    visit new_course_path
    click_on 'Add a course'

    fill_in 'Course Name', with: 'Spanish II'
    # select teacher from dropdown
    click_on 'Submit'

    expect(current_path).to eq(courses_path)
    expect(page).to have_content('Spanish II')

    visit teacher_path(teacher)
    expect(page).to have_content('Spanish II')
  end

  scenario 'by removing a course' do
    teacher = create(:teacher)
    course = create(:course, name: 'Music')

    visit teacher_path(teacher)
    expect(page).to have_content('Music')

    click_on "Delete Course"

    expect(current_path).to eq(courses_path)
    expect(page).to_not have_content('Music')

    visit teacher_path(teacher)
    expect(page).to_not have_content('Music')
  end
end
