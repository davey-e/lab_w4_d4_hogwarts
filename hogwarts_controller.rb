require('sinatra')
require('sinatra/contrib/all')
require_relative('./models/student.rb')

#Index
get('/hogwarts') do
  @students = Student.all()
  erb(:index)
end
