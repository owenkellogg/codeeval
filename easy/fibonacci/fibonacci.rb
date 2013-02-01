# The Fibonacci series is defined as:
# F(0) = 0; F(1) = 1; F(n) = F(n-1) + F(n-2) when n>1;. 
# Given a positive integer 'n', print out the F(n).

def fib(n)
  f = [] 
  f[0] = 0
  f[1] = 1

  unless f[n] 
    f[n] = fib(n-1) + fib(n-2)
  end

  return f[n]
end

File.read(ARGV[0]).split("\n").each do |n| 

  puts fib(n.to_i)

end




