require 'sqlite3'
require 'faker'

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

def team_name_change(db, team_name, id)
	db.execute("UPDATE teams SET team_name=(?) WHERE id=(?)", [team_name, id])
	#stm = db.prepare "UPDATE teams SET team_name=? WHERE id=?"; stm.bind_param 1, $team_name; stm.bind_param 2, $editKey;stm.execute;stm.close
end


user_input = ""
while user_input != "done"
	puts "Please enter Team Name:"
	team_name = gets.chomp
	create_team(db, team_name)
	puts "press enter to continue submitting teams. when done, enter 'done'"
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
  	puts "Press enter to continue. Enter 'done' when finished."
  	user_input2 = gets.chomp
end


puts "3, 2, 1, ULTIMATE!"

puts "Sportscaster 1: Wow, look at that disc zippin' on by back and forth!"

puts "Sportscaster 2: Truly a remarkable game of College Ultimate Frisbee!"

puts "Sportscaster 1: The thrill of the game almost makes you forget the crippling amount of student debt these players will be carrying for years after this game!"

puts "Sportscaster 2: Shush, it's frisbee time!"

puts "3... 2... 1... EHHHHHHH, GAME!"


puts "How many teams are listed on the roster? We will be going through their wins and losses starting with Team ID 1 and working down."
number_of_teams = gets.to_i
number_of_teams.times do |number|
	puts "Great game! Or was it? Enter 'yes' or 'no'"
	team_id = number + 1
	user_input = gets.chomp
		if user_input == "yes" 
			win = 1 
			puts "Any comment your team would like to make on this galiant victory Team Id: #{team_id}?"
			team_comment = gets.chomp
		else 
			win = 0
			puts "Any comment your team would like to make on this crushing defeat?"
			team_comment = gets.chomp
			puts "Would you like to change your team name to mask your shame? If so, enter 'yes'"
				user_input = gets.chomp
				if user_input == "yes"
					team_name = gets.chomp
					id = number + 1
					team_name_change(db, team_name, id)
				end
		end
	game_outcome(db, win, team_comment, team_id)
	puts "Thank you for playing College Ultimate Frisbee!"
end

rows = db.execute2 "SELECT team_name FROM teams"

p rows


