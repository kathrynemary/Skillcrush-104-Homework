def ask_for_birthdate
print "Please give your birthdate in the format MMDDYYYY:"
date = gets
return date
end


def birth_path_number

birthdate = ask_for_birthdate

birth_number = (birthdate[0]).to_i + (birthdate[1]).to_i + (birthdate[2]).to_i + (birthdate[3]).to_i + (birthdate[4]).to_i + (birthdate[5]).to_i + (birthdate[6]).to_i + (birthdate[7]).to_i

birth_number = birth_number.to_s

birth_number = birth_number[0].to_i + birth_number[1].to_i

if birth_number <= 9
  final_number = birth_number
else
  final_number = (birth_number[0].to_i + birth_number[1].to_i)
end

return final_number

end

def what_to_say

output = birth_path_number.to_i

case output
when 1
  return <h1>Not Found</h1> "Your numerology number is 1. \nOne is the leader. The number one indicates the ability to stand alone, and is a strong vibration. Ruled by the Sun."
when 2
  return "Your numerology number is 2. \nThis is the mediator and peace-lover. The number two indicates the desire for harmony. It is a gentle, considerate, and sensitive vibration. Ruled by the Moon."
when 3
  return "Your numerology number is 3. \nNumber Three is a sociable, friendly, and outgoing vibration. Kind, positive, and optimistic, Three’s enjoy life and have a good sense of humor. Ruled by Jupiter."
when 4
  return "Your numerology number is 4. \nThis is the worker. Practical, with a love of detail, Fours are trustworthy, hard-working, and helpful. Ruled by Uranus."
when 5
  return "Your numerology number is 5. \nThis is the freedom lover. The number five is an intellectual vibration. These are ‘idea’ people with a love of variety and the ability to adapt to most situations. Ruled by Mercury."
when 6
  return "Your numerology number is 6. \nThis is the peace lover. The number six is a loving, stable, and harmonious vibration. Ruled by Venus."
when 7
  return "Your numerology number is 7. \nThis is the deep thinker. The number seven is a spiritual vibration. These people are not very attached to material things, are introspective, and generally quiet. Ruled by Neptune."
when 8
  return "Your numerology number is 8. \nThis is the manager. Number Eight is a strong, successful, and material vibration. Ruled by Saturn."
when 9
  return "Your numerology number is 9. \nThis is the teacher. Number Nine is a tolerant, somewhat impractical, and sympathetic vibration. Ruled by Mars."
end

end

def say_the_thing
  thing_to_say = what_to_say
  
  puts thing_to_say
end

say_the_thing