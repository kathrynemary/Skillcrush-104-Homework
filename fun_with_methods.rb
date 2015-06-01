def find_time
  time = Time.new
  hour = time.hour
  return hour
end

def who_are_you
  puts "Who's there?"
  friend = gets.chomp
  return friend
end

def greet_friend
  clock_time = find_time
  person_to_greet = who_are_you

  if clock_time > 6 && clock_time < 12
    phrase = "morning"
  elsif clock_time > 12 && clock_time < 17
    phrase = "afternoon"
  else
    phrase = "late in the day"
  end	

  puts "I hope you're having a good #{phrase}, #{person_to_greet}!"
  
end 

greet_friend
