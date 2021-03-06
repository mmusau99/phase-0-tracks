# require gems
require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /
get '/' do
  "#{params[:name]} is #{params[:age]} years old."
end

# write a GET route with
# route parameters
get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end

get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end

# write a GET route that retrieves
# all student data
get '/students' do
  students = db.execute("SELECT * FROM students")
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

# write a GET route that retrieves
# a particular student

get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  student.to_s
end
get '/contact/:address' do 
  address = params[:address]
  "your address is #{address}"
   
end

get '/great_job/:name' do 

  student_name = db.execute("SELECT students.name FROM students WHERE name=?", [params[:name]])
  if student_name != []
  student_name.to_s
  p student_name
  response =""
  student_name.each do |student|
    response << "#{student ['name']}"
  end

  "Good job, #{response}!"
else
  "Good job!"

end
end

get '/addition/' do 
  num1 = params[:num_1]
  num2 = params[:num_2]
  sum = num1.to_i + num2.to_i

  sum.to_s
  "The sum of #{num1} and #{num2} is #{sum}"


   
end