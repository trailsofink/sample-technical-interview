# birthday_cake.rb
#
# It's your birthday! Yay! 🎂
#
# Can you debug this BirthdayCake class in time to sing happy birthday? 🎶
#
# Tip: Resolve the error messages before trying to make it work
#
# Expected output:
# Happy 10th Birthday!
# Birthday cake with 10 blown out candles
# Lighting candles...
# Birthday cake with 10 lit candles
# Singing happy birthday...
# 🎶Happy birthday to you, happy birthday to you🎶
# Blowing out candles...
# Birthday cake with 10 blown out candles
#

require 'active_support/all'

class BirthdayCake
  attr_accessor :age, :lit

  def initialize(age)
    self.age = age
    self.lit = false
  end

  def candles_status
    return 'lit' if lit == true

    'blown out'
  end

  def greet
    "Happy #{age.ordinalize} Birthday!"
  end

  def sing
    '🎶Happy birthday to you, happy birthday to you🎶'
  end

  def to_s
    "Birthday cake with #{age} #{candles_status} candles"
  end

  def light_candles
    self.lit = true
  end

  def blow_out_candles
    self.lit = false
  end

  def self.celebrate(age)
    birthday_cake = BirthdayCake.new(age)
    puts birthday_cake.greet
    puts birthday_cake
    puts 'Lighting candles...'
    birthday_cake.light_candles
    puts birthday_cake
    puts 'Singing happy birthday...'
    puts birthday_cake.sing
    puts 'Blowing out candles...'
    birthday_cake.blow_out_candles
    puts birthday_cake

    birthday_cake
  end
end

BirthdayCake.celebrate(10)
