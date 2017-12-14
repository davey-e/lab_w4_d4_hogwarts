require('sinatra')
require('sinatra/contrib/all')
require_relative('./models/student.rb')

#Index
get('/hogwarts') do
  @students = Student.all()
  erb(:index)
end

#New

get('/hogwarts/new') do
  erb(:new)
end

#Create

post('/hogwarts') do
  @student = Student.new(params)
  @student.save
  redirect('/hogwarts')
end
