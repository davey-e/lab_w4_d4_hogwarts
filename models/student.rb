require('pry-byebug')

class Student

  attr_reader :id, :first_name, :last_name, :house, :age

    def initialize (options)
      @id = options['id'].to_i
      @first_name = options['first_name']
      @last_name = options['last_name']
      @house = options['house']
      @age = options['age'].to_i
    end

def save
  

end
