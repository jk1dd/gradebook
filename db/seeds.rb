STUDENTS = ['Kayla', 'Ryan', 'Anna', 'Mason', 'Steve', 'Matt', 'Katherine']
TEACHERS = ['Bilbo', 'Joe', 'Eva', 'Fred', 'Betty', 'Oscar']
COURSES = ['Math', 'Music', 'Candymaking', 'Kayaking', 'Physics', 'Brewing', 'Shoemaking', 'Gambling', 'Woodshop', 'Lamp-building', 'Sock-darning', 'Biology']

TEACHERS.each do |name|
  teacher = Teacher.create!(name: name)
  puts "Created #{teacher.name}"
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
