require 'sqlite3'
require 'faker'

fantasy_soccer = SQLite3::Database.new("fantasy_soccer.db")

players_schema = <<-SQL
CREATE TABLE IF NOT EXISTS players (
id INTEGER PRIMARY KEY,
name VARCHAR(255),
number INT,
age INT,
position VARCHAR(255)

)

SQL