class String
  def to_a
    index = 0
    array = []
    while index < self.to_s.length
      array[index] = self.to_s[index]
      index += 1
    end 

    return array
  end 
end

class Fixnum
  def to_a
    self.to_s.to_a.map!(&:to_i)
  end 

  def happy_number?
    # repeatedly sum the squares of the number's digits
    # if the sum is ever 1 it is a happy number

    ones_count = 0
    digits = self

    10000.times do 
      squares = digits.to_a.map!{ |d| d**2 }
      digits = squares.inject(0){ |sum, square| sum + square }

      ones_count += 1 if digits == 1
    end 

    puts ones_count > 0 ? 1 : 0
  end 
end 

integers = File.read(ARGV[0]).split("\n").map!(&:to_i)

integers.collect &:happy_number?