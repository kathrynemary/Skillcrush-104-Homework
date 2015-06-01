require 'sinatra'

def valid_birthdate(input)
  if input.length == 8
    if input.match(/^[0-9]+[0-9]$/)
      return true
    else
	  return false
	end
  else
    return false
  end
end

def birth_path_number(birthdate)

birth_number = (birthdate[0]).to_i + (birthdate[1]).to_i + (birthdate[2]).to_i + (birthdate[3]).to_i + (birthdate[4]).to_i + (birthdate[5]).to_i + (birthdate[6]).to_i + (birthdate[7]).to_i

birth_number = birth_number.to_s
birth_number = birth_number[0].to_i + birth_number[1].to_i

if birth_number > 9
  birth_number = birth_number.to_s
  birth_number = (birth_number[0].to_i + birth_number[1].to_i)
else
  birth_number = birth_number
end

return birth_number.to_i

end

def what_to_say(birth_number)

case birth_number
when 1
  return "Your numerology number is One. \nOne is the leader. The number one indicates the ability to stand alone, and is a strong vibration. Ruled by the Sun."
when 2
  return "Your numerology number is Two. \nThis is the mediator and peace-lover. The number two indicates the desire for harmony. It is a gentle, considerate, and sensitive vibration. Ruled by the Moon."
when 3
  return "Your numerology number is Three. \nNumber Three is a sociable, friendly, and outgoing vibration. Kind, positive, and optimistic, Three’s enjoy life and have a good sense of humor. Ruled by Jupiter."
when 4
  return "Your numerology number is Four. \nThis is the worker. Practical, with a love of detail, Fours are trustworthy, hard-working, and helpful. Ruled by Uranus."
when 5
  return "Your numerology number is Five. \nThis is the freedom lover. The number five is an intellectual vibration. These are ‘idea’ people with a love of variety and the ability to adapt to most situations. Ruled by Mercury."
when 6
  return "Your numerology number is Six. \nThis is the peace lover. The number six is a loving, stable, and harmonious vibration. Ruled by Venus."
when 7
  return "Your numerology number is Seven. \nThis is the deep thinker. The number seven is a spiritual vibration. These people are not very attached to material things, are introspective, and generally quiet. Ruled by Neptune."
when 8
  return "Your numerology number is Eight. \nThis is the manager. Number Eight is a strong, successful, and material vibration. Ruled by Saturn."
when 9
  return "Your numerology number is Nine. \nThis is the teacher. Number Nine is a tolerant, somewhat impractical, and sympathetic vibration. Ruled by Mars."
else
  return "Oh no, something bad happened."
end
end

def setup_index_view
  birthdate = params[:birthdate]
  birth_path_number = birth_path_number(birthdate)
  @output = what_to_say(birth_path_number)  
  erb :index
end

get '/' do
  erb :form
end

post '/' do
  birthdate = params[:birthdate].gsub("-","")
  if valid_birthdate(birthdate)
    birth_path_number = birth_path_number(birthdate)
    redirect "/message/#{birth_path_number}"
  else
    @error = "That was not a valid date!"
    erb :form
  end
end

get '/:birthdate' do
  setup_index_view
end

get '/newpage/' do
  @var = "SURPRISE!"
  erb :newpage
end

get '/message/:birth_path_number' do
  birth_path_number = params[:birth_path_number].to_i
  @output = what_to_say(birth_path_number)
  erb :index
end
