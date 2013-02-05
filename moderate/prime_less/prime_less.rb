def is_prime?(i)
  # A prime number is a positive integer such that  
  # for each n in the set of integers 1 < n <= sqrt(i)
  # ( i mod n ) > 0 

  square = Math.sqrt(i).floor
  mods = []

  (2..square).each do |n|  
    mods.push(i % n)
  end 

  # If any value i mod n == 0 the number is not prime
  !(mods.uniq.include?(0))
end 

def primes_less_than(number)
  number = number.to_i
  primes = []
  n = 2
  while n < number
    primes.push(n) if is_prime?(n)
    n = n + 1
  end 

  return primes
end 

class Range 
  def to_a
    a = []
    each do |i|
      a.push(i)
    end 
    return a
  end 
end 

inputs = File.read(ARGV[0]).split("\n")

inputs.each do |i|
  puts primes_less_than(i).join(",")
end 
 