fav_color = 'purple'

case fav_color
when 'red' && 'orange'
  puts "Warm like fire!"
when 'yellow' && 'green'
  puts "The color of spring!"
when 'blue' || 'purple'
  puts "Deep like the sea!"
else
  puts "Hmm, I don't know what that is."
end

weather = 'slushy'

case weather
when 'sunny'
  puts "Don't forget the sunscreen!"
when 'rainy'
  puts "Bring an umbrella!"
when 'snowy'
  puts "Wear warm socks!"
else
  puts "Probably you should layer."
end