# Main file for

require 'sqlite3'

DATABASE_NAME = 'tweets_db'

db_connection = SQLite3::Database.new "#{DATABASE_NAME}.db"

db_connection.execute("drop table if exists tweets;")

db_connection.execute(<<-SQL
  create table tweets
  (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    tweet  VARCHAR(140) NOT NULL,
    sent BOOLEAN NOT NULL
    );
SQL
)





