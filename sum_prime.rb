# Sum the first 1000 prime numbers

def is_prime?(i)
	# A prime number is one such that for each n 
	# in the set of integers 0 < n <= sqrt(i)
	# i mod n == 0 OR i mod n == n 

  square = Math.sqrt(i).floor
  mods = []

  (1..square).each do |n|  
  	mods.push(i % n) unless n == 1
  end 

  # If any value i mod n == 0 the number is not prime
  # If the list contains any
  !(mods.uniq.include?(0))
end 

def sum_primes(number_of_primes)
  primes = []
	index = 2 # Start with 2, the first prime number

	while primes.length < number_of_primes
		if is_prime?(index)
		  primes.push(index) 
		end 
		index += 1
	end 

	sum = primes.inject(0){|sum,x| sum + x } 
end 

def test_sum_primes
	sum_primes(1000) == 3682913
end 

puts sum_primes(1000)


