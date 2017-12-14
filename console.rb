require_relative('./models/student.rb')
require('pry-byebug')

Student.delete_all()

student1 = Student.new({
  "first_name" => "Harry",
  "last_name" => "Potter",
  "house" => "Gryffindor",
  "age" => "13"})
student1.save()

student2 = Student.new({
  "first_name" => "Hermione",
  "last_name" => "Granger",
  "house" => "Gryffindor",
  "age" => "13"
  })
student2.save

student3 = Student.new({
  "first_name" => "David",
  "last_name" => "Cameron",
  "house" => "Slytherin",
  "age" => "16"
  })
student3.save

student4 = Student.new({
  "first_name" => "Ed",
  "last_name" => "Balls",
  "house" => "Huffelpuff",
  "age" => "17"
  })
student4.save

binding.pry
nil
