
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

	def armstrong?
		# is armstrong number of length n if the number equals the 
		# sum of the nth power of its digits
	  armstrong = ( self == self.to_a.collect!{|n|n**(self.to_a.size)}.inject(0){|sum,n|sum+n} )

	  puts armstrong ? 'True' : 'False'
	end 
end 

integers = File.read(ARGV[0]).split("\n").map!(&:to_i)

integers.collect &:armstrong?