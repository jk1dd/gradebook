# # This file should contain all the record creation needed to seed the database with its default values.
# # The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
# #
# # Examples:
# #
# #   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
# #   Character.create(name: 'Luke', movie: movies.first)
#
STUDENTS = ['Kayla', 'Ryan', 'Anna', 'Mason', 'Steve', 'Matt', 'Katherine']
TEACHERS = ['Bilbo', 'Joe', 'Eva', 'Fred', 'Betty', 'Oscar']
COURSES = ['Math', 'Music', 'Candymaking', 'Kayaking', 'Physics', 'Brewing', 'Shoemaking', 'Gambling', 'Woodshop', 'Lamp-building', 'Sock-darning', 'Biology']

TEACHERS.each do |name|
  teacher = Teacher.create!(name: name)
  # teacher = Teacher.create!(name: name)
  puts "Created #{teacher.name}"
  # teacher.courses.create(name: COURSES.sample)
  # teacher.courses.create(name: COURSES.sample)
end

COURSES.each do |name|
  course = Course.create(name: name, teacher_id: (rand(TEACHERS.count) + 1))
  puts "Created #{course.name}"
end

STUDENTS.each do |name|
  student = Student.create(name: name)
  puts "Created #{student.name}"
end

20.times do |num|
  StudentCourse.create(student_id: (rand(STUDENTS.count) + 1), course_id: (rand(COURSES.count) + 1), grade: rand(50..100))
end

# Teacher.all.each do |teacher|
#   course = teacher.courses.create!(name: COURSES.sample)
#   puts "Assigned #{course.name} to #{teacher.name}"
#   course_2 = teacher.courses.create!(name: COURSES.sample)
#   puts "Assigned #{course_2.name} to #{teacher.name}"
#   COURSES.delete(course)
#   COURSES.delete(course_2)
# end
#
# student = Student.create!(name: STUDENTS.sample)
# Course.first.students << student
# STUDENTS.delete(student)
#
# student_1 = Student.create!(name: STUDENTS.sample)
# Course.second.students << student_1
# Course.second.students << student
# STUDENTS.delete(student_1)
#
# student_2 = Student.create!(name: STUDENTS.sample)
# Course.third.students << student_2
# Course.third.students << student_1
# STUDENTS.delete(student_2)
#
# student_3 = Student.create!(name: STUDENTS.sample)
# Course.fourth.students << student_3
# Course.fourth.students << student_2
# STUDENTS.delete(student_3)


# Course.all.each do |course|
#   student_1 = Student.create(name: STUDENTS.sample)
#   puts "Created #{student_1.name}"
#   course.students << student_1
#   puts "Assigned #{student_1.name} to #{course.name}"
#   STUDENTS.delete(student_1)
#
#   student_2 = Student.create(name: STUDENTS.sample)
#   puts "Created #{student_2.name}"
#   course.students << student_2
#   puts "Assigned #{student_2.name} to #{course.name}"
#   STUDENTS.delete(student_2)
# end

# student_1 = Student.create(name: "Billy")
# puts "Created #{student_1.name}"
# course.students << student_1
# puts "Assigned #{student_1.name} to #{course.name}"
# student_2 = Student.create(name: "Chrissy")
# puts "Created #{student_2.name}"
# course.students << student_2
# puts "Assigned #{student_2.name} to #{course.name}"
# student_3 = Student.create(name: "Jorge")
# puts "Created #{student_3.name}"
# course.students << student_3
# puts "Assigned #{student_3.name} to #{course.name}"

# teacher_1 = Teacher.create(name: 'Teacher The Great')
# teacher_1.courses.create(name: 'Spanish')
# teacher_1.courses.create(name: 'Physics')
#
# teacher_2 = Teacher.create(name: 'Teacher The Terrible')
# teacher_2.courses.create(name: 'Math')
# teacher_2.courses.create(name: 'Gym')
#
# student = Student.create(name: 'Tyler')
