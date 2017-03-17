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

fantasy_soccer.execute(teams_schema)
fantasy_soccer.execute(players_schema)
def create_team (db, team_name, team_rating)
	fantasy_soccer.execute("INSERT INTO team (team_name, team_rating) VALUES (?, ?)", [team_name, team_rating])

end

def create_players(db,name, number, position, team)
	end