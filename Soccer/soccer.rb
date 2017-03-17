require 'sqlite3'
require 'faker'

fantasy_soccer = SQLite3::Database.new("fantasy_soccer.db")

players_schema = <<-SQL
CREATE TABLE IF NOT EXISTS players (
id INTEGER PRIMARY KEY,
name VARCHAR(255),
number INT,
age INT,
position VARCHAR(255),
team_id INT,
FOREIGN KEY (team_id) REFERENCES team(id)
);
SQL

teams_schema = <<-SQL
CREATE TABLE iF NOT EXISTS team (
id INTEGER PRIMARY KEY, 
team_name VARCHAR(255),
team_rating INT

);
SQL

position = ["Striker", "Winger","Central-Midfielder","Defensive-Mid","Central-Attacking-Midfielder", "Center-Back", "Full-Back"]

fantasy_soccer.execute(teams_schema)
fantasy_soccer.execute(players_schema)
def create_team (db, team_name, team_rating)
	db.execute("INSERT INTO team (team_name, team_rating) VALUES (?, ?)", [team_name, team_rating])

end
2. times do
	create_team(fantasy_soccer, Faker::GameOfThrones.house, Faker::Number.between(1,10))
	
end
def create_players(db,name, number, position)
	db.execute("INSERT INTO players (name, number, age, position) VALUES (?,?,?,?)", [name, number, position])

	end
2. times do
	create_players(fantasy_soccer,Faker::GameOfThrones.character,Faker::Number.between(1,11),position[Random.rand(0..8)] )
end