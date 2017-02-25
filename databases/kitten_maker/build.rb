require 'sqlite3'
require 'faker'
require 'table_print'

db = SQLite3::Database.new("ultimate_frisbee.db")
db.results_as_hash = true

create_player_table = <<-SQL 
	CREATE TABLE IF NOT EXISTS players(
		id INTEGER PRIMARY KEY, 
		name VARCHAR (255), 
		age INT, 
		team_id INT,
		FOREIGN KEY (team_id) REFERENCES teams(id)
	)
SQL

create_teams_table = <<-SQL 
	CREATE TABLE IF NOT EXISTS teams(
		id INTEGER PRIMARY KEY,
		team_name VARCHAR (255)
	)
SQL

create_outcome_table = <<-SQL
	CREATE TABLE IF NOT EXISTS outcome(
		id INTEGER PRIMARY KEY,
		win BOOLEAN,
		team_comment VARCHAR(255),
		team_id INT,
		FOREIGN KEY (team_id) REFERENCES teams(id)
	)
SQL


db.execute(create_outcome_table)
db.execute(create_teams_table)
db.execute(create_player_table)

def create_team(db, team_name)
	db.execute("INSERT INTO teams (team_name) VALUES (?)", [team_name])
end

def create_players(db, name, age, team_id)
	db.execute("INSERT INTO players (name, age, team_id) VALUES (?, ?, ?)", [name, age, team_id])
end

def game_outcome(db, win, team_comment, team_id)
	db.execute("INSERT INTO outcome (win, team_comment, team_id) VALUES (?, ?, ?)", [win, team_comment, team_id])
end


user_input = ""
while user_input != "done"
# 2.times do |team_name|
	puts "Please enter Team Name:"
	team_name = gets.chomp
	create_team(db, team_name)
	puts "please enter any key to continue submitting teams. when done, enter 'done'"
	user_input = gets.chomp
end


user_input2 = ""
while user_input2 != "done"
	#puts "press any key and enter to start or enter 'done' when finished."
	#user_input = gets.chomp
	puts "Hello, what is your age?"
	age = gets.to_i
	puts "What is your Team ID number?"
	team_id = gets.to_i 
  create_players(db, Faker::Name.name, age, team_id)
  	puts "Thank you #{Faker::Name.name}!"
  	puts "Press any key and enter to continue. Enter 'done' when finished."
  	user_input2 = gets.chomp
end

puts "3, 2, 1, ULTIMATE!"

puts "Sportscaster 1: Wow, look at that disc zippin' on by back and forth!"

puts "Sportscaster 2: Truly a remarkable game of College Ultimate Frisbee!"

puts "Sportscaster 1: The thrill of the game almost makes you forget the crippling amount of student debt these players will be carrying for years after this game!"

puts "Sportscaster 2: Shush, it's frisbee time!"

puts "3... 2... 1... EHHHHHHH, GAME!"

puts "Great game! Or was it? Enter 'yes' or 'no'"
user_input = gets.chomp
	if user_input == "yes" 
		win = "won" 
		puts "Any comment your team would like to make on this galiant victory?"
		team_comment = gets.chomp
	else 
		win = "lost"
		puts "Any comment your team would like to make on this crushing defeat?"
		team_comment = gets.chomp
	end
puts "What was your Team ID number again?"
team_id = gets.to_i
game_outcome(db, win, team_comment, team_id)
puts "Thank you for playing College Ultimate Frisbee!"

rows = db.execute2 "SELECT * FROM teams"

p rows



# require 'sqlite3'
# require 'faker'

# db = SQLite3::Database.new("ultimate_frisbee.db")
# db.results_as_hash = true

# create_player_table = <<-SQL 
# 	CREATE TABLE IF NOT EXISTS players(
# 		id INTEGER PRIMARY KEY, 
# 		name VARCHAR (255), 
# 		age INT, 
# 		team_id INT,
# 		FOREIGN KEY (team_id) REFERENCES teams(id)
# 	)
# SQL

# create_teams_table = <<-SQL 
# 	CREATE TABLE IF NOT EXISTS teams(
# 		id INTEGER PRIMARY KEY,
# 		team_name VARCHAR (255),
# 		wins INT,
# 		losses INT
# 	)
# SQL



# db.execute(create_teams_table)
# db.execute(create_player_table)

# def create_team(db, team_name, wins, losses)
# 	db.execute("INSERT INTO teams (team_name, wins, losses) VALUES (?, ?, ?)", [team_name, wins, losses])
# end

# def create_players(db, name, age, team_id)
# 	db.execute("INSERT INTO players (name, age, team_id) VALUES (?, ?, ?)", [name, age, team_id])
# end

# user_input = ""
# while user_input != "done"
# # 2.times do |team_name|
# 	total_games = 10
# 	puts "Please enter Team Name:"
# 	team_name = gets.chomp
# 	puts "Please enter your number of wins:"
# 	wins = gets.to_i
# 	losses = total_games - wins
# 	create_team(db, team_name, wins, losses)
# 	puts "please enter any key to continue submitting teams. when done, enter 'done'"
# 	user_input = gets.chomp
# end


# user_input2 = ""
# while user_input2 != "done"
# 	#puts "press any key and enter to start or enter 'done' when finished."
# 	#user_input = gets.chomp
# 	puts "Hello, what is your age?"
# 	age = gets.to_i
# 	puts "What is your Team ID number?"
# 	team_id = gets.to_i 
#   create_players(db, Faker::Name.name, age, team_id)
#   	puts "Thank you #{Faker::Name.name}!"
#   	puts "Press any key and enter to continue. Enter 'done' when finished."
#   	user_input2 = gets.chomp
# end



 # def list_team(db, name, age, team_name, team_id, id)
 # 	db.execute("SELECT players.name, players.age, teams.team_name FROM players JOIN teams ON players.team_id=teams.id", [name, age, team_name, team_id, id])
 # end

 # list_team(db, name, age, "LUDA!", team_id, id)

# team_id.each do |team|
# 	puts "#{}"

