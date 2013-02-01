# Print out the series 1 through N replacing numbers divisible by 'A' by F,
# numbers divisible by 'B' by B and numbers divisible by both as 'FB'. 
# Since the input file contains multiple sets of values, 
# your output will print out one line per set. Ensure that there are no 
# trailing empty spaces on each line you print

class Fixnum
	def match(i)
		self % i == 0 && self > 1
	end
end 

def transform_number(i, a, b)
  i = i.to_i
  if i.match(a) && i.match(b)
  	i = "FB"
  elsif i.match(a)
  	i = "F"
  elsif i.match(b)
  	i = "B"	
  end 
  i
end 

File.read(ARGV[0]).split("\n").each do |line|
	a, b, n = line.split(" ").map{ |i| i.to_i }
	new_line = (1..n).map { |i| transform_number i, a, b }.join(" ")
	puts new_line 
end 



