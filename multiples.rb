# Given numbers x and n, where n is a power of 2, 
# print out the smallest multiple of n which is greater than or equal to x. 
# Do not use division or modulo operator.

def smallest_multiple_of_n_greater_than_or_equal_to_x(n, x)  
  index = 1
  multiple = index * n 

  while multiple < x
    multiple = n * index
    index += 1
  end

  return multiple
end

file = File.read(ARGV[0])
pairs = file.split("\n")

pairs.each do |pair|
  x, n = pair.split(",").map{ |i| i.to_i }
  puts smallest_multiple_of_n_greater_than_or_equal_to_x(n, x)
end 



