#If the number is a self-describing number, print out a 1. If not, print out a 0 eg.

class Fixnum
  def self_describing_number?
    length = self.to_s.length

    # Create an array holding the number of times each index
    # appears in the integer array
    index = 0
    occurrances = []
    while index < ( length )
      occurrances[index] = self.as_array.grep(index).size
      index += 1
    end 

    # Match number of occurrances each number i in an integer
    # matches the value of the integer at index i
    matches = 0
    occurrances.each_with_index do |count, index|
      if self.as_array[index] == count
        matches += 1
      end 
    end 

    # Is self-describing if the value of each index of the integer
    # equals the number of times the index appears in the integer
    puts (matches == occurrances.size) ? 1 : 0  
  end 


  # Convert integer to an array for counting
  def as_array
    self_as_array = []
    index = 0
    self.to_s.length.times do 
      self_as_array.push(self.to_s[index].to_i)
      index += 1
    end 
    return self_as_array
  end 
end 

File.read(ARGV[0]).split("\n").collect do |n| 
  n.to_i.self_describing_number? 
end 


