class Fixnum
  def modulus(n)
    quotient = ( self.to_f / n.to_f )
    remainder = quotient - quotient.floor
    return ( remainder * n ).round
  end
end 

def test_modulus(a,b) 
  ( a % b ) == a.modulus(b) 
end 

lines = File.read(ARGV[0]).split("\n")

lines.each do |line| 
  a, b = line.split(",").collect(&:to_i)
  puts a.modulus(b)
end 
