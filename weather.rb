require 'yahoo_weatherman'

#print "What is the zip code that you want to search for?  "
#answer = gets 
answer = 72704
client = Weatherman::Client.new
doc = client.lookup_by_location("#{answer}")

weather = doc.condition['temp']
print "It is #{weather} degrees Celsius."

condition = doc.condition['text']
puts "Conditions are #{condition}."

puts doc.forecasts.map {|hash| hash['text']}
=begin
inquiry.forecasts.each do |thing|
  puts "#{forecasts['day'].to_s}"# + ' will be ' + forecasts['text']# + ' with a high of ' + forecast['high'].to_s + ' and a low of ' + forecasts['low'].to_s
end


require 'yahoo_weatherman'
 
def get_location(location)
  client = Weatherman::Client.new
  client.lookup_by_location(location)
end
 
weather = get_location('90210')
 
weather.forecasts.each do |f|
  puts forecast['day'].to_s + ' is going to be ' + forecast['text'].downcase + ' with a low of ' + forecast['low'].to_s + ' and a high of ' + forecast['high'].to_s
end
 
today = Time.now.strftime('%w').to_i
=end