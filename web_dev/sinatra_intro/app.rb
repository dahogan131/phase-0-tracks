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

get '/contact' do
  "#{params[:st_num]} #{params[:st_name]} #{params[:st_type]}, #{params[:city]}, #{params[:state]}. #{params[:zip]}"
end

 get '/great_job' do 

  if params[:name]
"Great job #{params[:name]}!"
  else
    "Good Job."
  end
 end

# write a GET route with
# route parameters
get '/about/:person/snack/:snack' do
  person = params[:person]
  snack = params[:snack]
  "#{person} is a programmer, and #{person} is learning Sinatra. #{person} also likes #{snack}."
end

get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end

get '/num1/:num1/num2/:num2' do
  num1 = params[:num1].to_i
  num2 = params[:num2].to_i
  sum = num1 + num2
  "#{sum}"
  #{}"#{num1} + #{num2}"
 # "#{params[:num1]}" + "#{params[:num2]}"
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

get '/campus/:campus' do
  campus = db.execute("SELECT * FROM students WHERE campus=?",[params[:campus]])
  campus_roster = ""
  campus.each do |student|
    campus_roster << "ID: #{student['id']}<br>"
    campus_roster << "Name: #{student['name']}<br>"
    campus_roster << "Age: #{student['age']}<br><br>"
  end
  campus_roster
end