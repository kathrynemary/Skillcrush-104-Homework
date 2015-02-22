puts "Give me a number, please!"
user_input = gets
data = user_input.to_i

data += 5
data *=2
data -= 4
data /= 2
data -= user_input.to_i

puts "Aand the final number is: #{data}!"
