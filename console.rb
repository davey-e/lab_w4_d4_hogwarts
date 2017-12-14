require_relative('./models/student.rb')
require_relative('./models/house.rb')
require('pry-byebug')

Student.delete_all()
House.delete_all()

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

house1 = House.new({
  "name" => "Gryffindor"
  })
house1.save()

house2 = House.new({
  "name" => "Hufflepuff"
  })
house2.save()

house3 = House.new({
  "name" => "Ravenclaw"
  })
house3.save()

house4 = House.new({
  "name" => "Slytherin"
  })
house4.save()

binding.pry
nil
