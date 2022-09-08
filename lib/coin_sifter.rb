require 'pry'

class ComboWombo
  attr_accessor(:cents)
  
  def initialize(cents)
    @cents = cents
  end

  def coin_sifter
    coins_hash = {
      25 => "Quarter",
      10 => "Dime",
      5 => "Nickel",
      1 => "Penny"
    }

    #coins_hash.each() figure out how to loop through the hash and get keys out

    result_string = ""
    x = @cents 
    # 2 % 1 = 1
    # 2 - 1cent
    # 1 % 1 = 1 (2 pennies)
    # 1 - 1 = 0 done with our loop
    coin_array = [0,0,0,0]


    until (x == 0)
      if (x >= 25)
        # result_string.concat("1 #{coins_hash[25]}")
        x -= 25 
        coin_array[0] += 1
      elsif (x >= 10)
        # result_string.concat("1 #{coins_hash[10]}")
        x -= 10
        coin_array[1] += 1
      elsif (x >= 5)
        # result_string.concat("1 #{coins_hash[5]}")
        x -= 5
        coin_array[2] += 1
      elsif (x >= 1)
        # result_string.concat("1 #{coins_hash[1]}")
        x -= 1
        coin_array[3] += 1
      else
        puts "this makes no cents"
      end     
    end
    return "Your change is #{coin_array[0]} Quarters #{coin_array[1]} Dimes #{coin_array[2]} Nickels and #{coin_array[3]} Pennies"
  end
  
end
