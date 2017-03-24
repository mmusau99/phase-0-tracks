# require gems
require 'sinatra'
require 'sqlite3'

set :public_folder, File.dirname(__FILE__) + '/static'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

create_campuses = <<-SQL
CREATE TABLE IF NOT EXISTS campuses (
id INTEGER PRIMARY KEY,
campus VARCHAR(255),
city VARCHAR(255),
zipcode VARCHAR
);
SQL
db.execute(create_campuses)

# show students on the home page
get '/' do
  @students = db.execute("SELECT * FROM students")
  erb :home
end

get '/students/new' do
  erb :new_student
end

# create new students via
# a form
post '/students' do
  db.execute("INSERT INTO students (name, campus, age) VALUES (?,?,?)", [params['name'], params['campus'], params['age'].to_i])
  redirect '/'
end

# add static resources
get '/young' do 
	 @young_students = db.execute("SELECT students.name, students.campus  FROM students WHERE age < 40")
	 erb :young_students
end
get '/campuses/new' do 
	erb :campuses
	 
end
get '/campus_view' do 
	@campuses = db.execute("SELECT * FROM campuses")
	erb :campus_view
	 
end
post '/campuses' do 
	db.execute("INSERT INTO campuses (campus, city, zipcode) VALUES(?,?,?)", params['campus'], params['city'], params['zipcode'])
	redirect '/campus_view'
	 
end