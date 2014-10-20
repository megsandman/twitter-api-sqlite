require_relative 'database.rb'
require_relative 'twitter.rb'

user_input = ARGV

if ARGV[0] == "add"
  user_input.shift
  DB_Actions.add_tweet(user_input.join(" "))
elsif ARGV[0] == "tweet"
  send_tweet
else
  p "Invalid command. Please enter 'add' or 'tweet'."
end
