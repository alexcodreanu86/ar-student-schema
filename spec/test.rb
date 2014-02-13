
require_relative '../app/models/student'
require_relative '../app/models/teacher'
require 'faker'
arr = []
# 9.times{ arr << Teacher.new(
#   name: Faker::Name.name,
#   email: Faker::Internet.email,
#   address: Faker::Address.street_address,
#   phone: Faker::PhoneNumber.phone_number
# )}
arr.each {|teacher| teacher.save}

puts fake = Teacher.new(name: "asdadas sfgsdg",
            email: "jamarcus.bode@robel.biz",
            address: "123 4353serfsd 234534sfdfsdf",
            phone: "2342635346")
fake.save
real_deal = Teacher.new(name: "asdadas sfgsdg",
            email: "jamarcus.bosfdsde@robel.biz",
            address: "123 4353serfsd 234534sfdfsdf",
            phone: "2342635346")
real_deal.save
