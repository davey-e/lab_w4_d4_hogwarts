require_relative('./models/student.rb')
require_relative('./models/house.rb')
require('pry-byebug')

Student.delete_all()
House.delete_all()

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

student1 = Student.new({
  "first_name" => "Harry",
  "last_name" => "Potter",
  "house_id" => house1.id,
  "age" => "13"})
student1.save()

student2 = Student.new({
  "first_name" => "Hermione",
  "last_name" => "Granger",
  "house_id" => house1.id,
  "age" => "13"
  })
student2.save

student3 = Student.new({
  "first_name" => "David",
  "last_name" => "Cameron",
  "house_id" => house4.id,
  "age" => "16"
  })
student3.save

student4 = Student.new({
  "first_name" => "Ed",
  "last_name" => "Balls",
  "house_id" => house2.id,
  "age" => "17"
  })
student4.save


binding.pry
nil
