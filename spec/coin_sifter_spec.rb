require 'rspec'
require ("./lib/coin_sifter.rb")

describe('#coin_sifter') do
  it("should output 1 penny if given 1 cent") do
    input_cents = 1
    my_combo = ComboWombo.new(input_cents)
    expect(my_combo.coin_sifter).to(eq("1 Penny"))
  end

  it("should output 1 nickel if given 5 cents") do
    input_cents = 5
    my_combo = ComboWombo.new(input_cents)
    expect(my_combo.coin_sifter).to(eq("1 Nickel"))
  end

  it("should output 1 dime if given 10 cents") do
    input_cents = 10
    my_combo = ComboWombo.new(input_cents)
    expect(my_combo.coin_sifter).to(eq("1 Dime"))
  end

  it("should output 1 quarter if given 25 cents") do
    input_cents = 25
    my_combo = ComboWombo.new(input_cents)
    expect(my_combo.coin_sifter).to(eq("1 Quarter"))
  end

  it("should output 1 quarter 1 penny if given 26 cents") do
    input_cents = 26
    my_combo = ComboWombo.new(input_cents)
    expect(my_combo.coin_sifter).to(eq("1 Quarter1 Penny"))
  end



end

  
  
#   describe('#is_palindrome?') do
#   it("is it palindrome?") do
#     test_subject = "dood"
#     my_pal = Palindrome.new(test_subject)
#     expect(my_pal.is_palindrome?).to(eq(true))
#   end 
# end
