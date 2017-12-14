require('pry-byebug')
require_relative('../db/sql_runner.rb')

class Student

  attr_reader :id, :first_name, :last_name, :house, :age

  def initialize (options)
    @id = options['id'].to_i
    @first_name = options['first_name']
    @last_name = options['last_name']
    @house = options['house']
    @age = options['age'].to_i
  end

  def save()
    sql = "INSERT INTO students (first_name, last_name, house, age)
    VALUES ($1, $2, $3, $4)
    RETURNING id"
    values = [@first_name, @last_name, @house, @age]
    student = SqlRunner.run(sql, values).first
    @id = student['id'].to_i
  end

  def find()
    sql = "SELECT * FROM students
    WHERE id = $1;"
    values = [@id]
    student_hash = SqlRunner.run(sql, values).first()
    return Student.new(student_hash)
  end

  def self.delete_all()
    sql = "DELETE FROM students;"
    SqlRunner.run(sql)
  end

  def self.all()
    sql = "SELECT * FROM students;"
    student_hashes = SqlRunner.run(sql)
    result = student_hashes.map {|student| Student.new(student)}
    return result
  end


end
