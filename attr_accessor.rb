class Coffee

  attr_accessor :flavor, :temp

  def taste
    return "delicious"
  end

  def about_coffee
    puts "I bet your #{@temp} #{@flavor} is #{taste}!"
  end

end

coffee_cup = Coffee.new
coffee_cup.flavor = "mocha"
coffee_cup.temp = "piping hot"
coffee_cup.about_coffee