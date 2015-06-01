print "Is Yogi cute? Y/N?   "
answer = gets.chomp.upcase

while answer == "N"
  print "Shame on you, liar! \nIs Yogi cute? Y/N?   "
  answer = gets.chomp.upcase
end

print "Oh good, I was just checking your vision."
  