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

def bit_positions_match?(n, p1, p2)
  # convert integer to binary string and then to array of characters
  bits = n.to_s(2).to_a
  # binary so bits are counted from right to left
  bits[(-p1)] == bits[(-p2)]
end 

lines = File.read(ARGV[0]).split("\n")

lines.each do |line|
	n, p1, p2 = line.split(",").map(&:to_i)
  puts bit_positions_match?(n, p1, p2)
end 