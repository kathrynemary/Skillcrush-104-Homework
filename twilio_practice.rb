#Well this was a solid effort. I can send one of the messages, but not respond to a message.
require 'rubygems'
require 'twilio-ruby'

account_sid = "AC313dc34b78877e3ca300c0004aff9307"
auth_token = "74681d16ff820eb914f14ed3a00f92b0"

@client = Twilio::REST::Client.new(account_sid, auth_token)

message = @client.account.messages.create(
  :from => "19016221562",
  :to => "8708159093",
  :body => "What is your question?"
)

puts message.to

response = gets.chomp
#response = "Kapow!"

predictions = [
  "It is certain",
  "It is decidedly so",
  "Without a doubt",
  "Yes definitely",
  "You may rely on it",
  "As I see it, yes",
  "Most likely",
  "Outlook good",
  "Yes",
  "Signs point to yes",
  "Reply hazy try again",
  "Ask again later",
  "Better not tell you now",
  "Cannot predict now",
  "Concentrate and ask again",
  "Don't count on it",
  "My reply is no",
  "My sources say no",
  "Outlook not so good",
  "Very doubtful"
  ]
  
new_message = @client.account.messages.create(
  :from => "19016221562",
  :to => "8708159093",
  :body => "You asked, '#{response}.' I say, #{predictions.sample}"
)
puts new_message.to
