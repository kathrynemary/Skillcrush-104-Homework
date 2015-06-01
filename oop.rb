class Coffee

  def set_flavor=(flavor)
    @flavor = flavor
  end
  
  def get_flavor
    return @flavor
  end
  
  def set_temp=(temp)
    @temp = temp
  end

  def get_temp
    return @temp
  end

  def taste
    return "delicious"
  end

  def about_coffee
    puts "I bet your #{@temp} #{@flavor} is #{taste}!"
  end

end

coffee_cup = Coffee.new
coffee_cup.set_flavor = "mocha"
coffee_cup.set_temp = "piping hot"
coffee_cup.about_coffee