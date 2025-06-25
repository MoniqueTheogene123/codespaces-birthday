=begin
birthday_cake.rb

It's your birthday! Yay! 🎂

Can you debug this BirthdayCake class in time to sing happy birthday? 🎶

Tip: Resolve the error messages before trying to make it work

Expected output:
Happy 10th Birthday!
Birthday cake with 10 blown out candles
Lighting candles...
Birthday cake with 10 lit candles
Singing happy birthday...
🎶Happy birthday to you, happy birthday to you🎶
Blowing out candles...
Birthday cake with 10 blown out candles

=end

require "active_support/all"

class BirthdayCake
  attr_accessor :age, :lit, :light_candles, :blow_out_candles, :sign

  def initialize(age)
    self.age = age
    self.lit = false
    self.blow_out_candles = true
    self.light_candles = true
    self.sign = sing
  end

  def candles_status
   if self.lit == true
      return light_candles
   else
    return blow_out_candles
    end

  def blow_out_candles = true
    return blow_out_candles
  end

  def greet
    "Happy #{self.age.ordinalize} Birdday!"
  end


  def sing
    "🎶Happy birthday to you, happy birthday to you🎶"
  end

  def to_s
    "Birthday cake with #{self.age} #{candles_status} candles"
  end

  def BirthdayCake.celebrate(age)
    birthday_cake = BirthdayCake.new(age)
    puts birthday_cake.greet
    puts birthday_cake.to_s
    puts "Lighting candles..."
    birthday_cake.light_candles
    puts birthday_cake.to_s
    puts "Singing happy birthday..."
    puts birthday_cake.sign
    puts "Blowing out candles..."
    birthday_cake.blow_out_candles
    puts birthday_cake.to_s

    birthday_cake
  end
end

BirthdayCake.celebrate(10)