require 'sqlite3'
require 'faker'
grocery_list = QLite3::Database.new("grocery_list.db")

grocery_list_table = <<-SQL
CREATE TABLE IF NOT EXISTS grocery_list (
id INTEGER PRIMARY KEY,
item VARCHAR(255)

)
SQL