
require_relative '../app/models/student'
require_relative '../app/models/teacher'
require_relative '../app/models/student_teacher'
require 'faker'
arr = []
9.times{ arr << Teacher.new(
  name: Faker::Name.name,
  email: Faker::Internet.email,
  address: Faker::Address.street_address,
  phone: Faker::PhoneNumber.phone_number
)}
arr.each {|teacher| teacher.save}

puts fake = Teacher.new(name: "asdadas sfgsdg",
            email: "jamarcus.bode@robel.biz",
            address: "123 4353serfsd 234534sfdfsdf",
            phone: "2342635346")
fake.save
# real_deal = Teacher.new(name: "asdadas sfgsdg",
#             email: "jamarcus.bosfdsde@robel.biz",
#             address: "123 4353serfsd 234534sfdfsdf",
#             phone: "2342635346")
# real_deal.save

all_teachers = Teacher.all
all_students = Student.all

# all_teachers.each do|teacher|
#   6.times do
#     student = all_students.pop;
#     StudentTeacher.new(student_id: student.id, teacher_id: teacher.id).save
#   end
# end

all_students.each do |student|
  teachers = all_teachers.sample(3)
  teachers.each do |teacher|
    StudentTeacher.new(student_id: student.id, teacher_id: teacher.id).save
  end
end


