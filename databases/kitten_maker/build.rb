

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

db.execute(create_teams_table)
db.execute(create_player_table)

def create_team(db, team_name)
	db.execute("INSERT INTO teams (team_name) VALUES (?)", [team_name])
end

user_input = ""
while user_input != "done"
# 2.times do |team_name|
	puts "Please enter Team Name."
	team_name = gets.chomp
	create_team(db, team_name)
	puts "please enter any key to continue submitting teams. when done, enter 'done'"
	user_input = gets.chomp
end

def create_players(db, name, age, team_id)
	db.execute("INSERT INTO players (name, age, team_id) VALUES (?, ?, ?)", [name, age, team_id])
end


user_input = ""
while user_input != "done"
	#puts "press any key and enter to start or enter 'done' when finished."
	#user_input = gets.chomp
	puts "Hello, what is your age?"
	age = gets.to_i
	puts "What is your Team ID number?"
	team_id = gets.to_i 
  create_players(db, Faker::Name.name, age, team_id)
  	puts "Thank you #{Faker::Name.name}!"
  	puts "Press any key and enter to continue. Enter 'done' when finished."
  	user_input = gets.chomp
end



 # def list_team(db, name, age, team_name, team_id, id)
 # 	db.execute("SELECT players.name, players.age, teams.team_name FROM players JOIN teams ON players.team_id=teams.id", [name, age, team_name, team_id, id])
 # end

 # list_team(db, name, age, "LUDA!", team_id, id)

# team_id.each do |team|
# 	puts "#{}"

