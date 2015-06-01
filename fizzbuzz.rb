(1..100).each do |num|
  if num % 3 == 0 && num % 5 == 0
	print "fizzbuzz "
  elsif num % 3 == 0
    print "fizz "
  elsif num % 5 == 0
    print "buzz "
  else print "#{num} "
  end
end

(1..100).each do |num|
  if num % 3 == 0
    if num % 5 == 0
	  print "fizzbuzz "
	else print "fizz "
    end	
  elsif num % 5 == 0
    print "buzz "
  else 
    print "#{num} "
  end
end
  