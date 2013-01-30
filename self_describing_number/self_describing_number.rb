#If the number is a self-describing number, print out a 1. If not, print out a 0 eg.

class Fixnum
  def self_describing_number?

    self_as_array = []
    length = self.to_s.length

    index = 0
    length.times do 
      self_as_array.push(self.to_s[index].to_i)
      index += 1
    end 

    index = 0
    occurrances = []

    while index < ( length )
      occurrances[index] = self_as_array.grep(index).size
      index += 1
    end 

    matches = 0
    occurrances.each_with_index do |count, index|
      if self_as_array[index] == count
        matches += 1
      end 
    end 

    puts (matches == occurrances.size) ? 1 : 0  
  end 
end 

File.read(ARGV[0]).split("\n").collect do |n| 
  n.to_i.self_describing_number? 
end 


