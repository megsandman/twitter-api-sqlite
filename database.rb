require 'sqlite3'

$db_connection = SQLite3::Database.new "tweets_db.db"

class DB_Actions
# add to it
def self.add_tweet(body)
  $db_connection.execute(<<-SQL
    insert into tweets (tweet, sent)
    values ("#{body}", 0);
    SQL
    )
end

def self.select_random_tweet
  $tweet = $db_connection.execute(<<-SQL
    select * from tweets where sent = 0 LIMIT 1;
    SQL
    ).flatten
  return $tweet[1]
end

def self.sent!(tweet_id)
  p tweet_id
  $db_connection.execute(<<-SQL
    update tweets
    set sent = 1
    where id = "#{tweet_id}";
    SQL
    )
end

end
