class Array
  def subarrays
    array = self
    subarrays = []

    length.times do |n|
      array = self.slice(n,length)

      while array.length > 0
        subarrays.push( array.sum )
        array.pop
      end
    end

    return subarrays
  end 

  def sum
    if length == 1
      self
    else 
      inject(0) {|sum,n| sum + n }
    end 
  end 
end 

class Integer
  def sum; self; end
end 

lines = File.read(ARGV[0]).split("\n")

lines.each do |line|
  # convert to an array of integers
  line = line.split(",").collect{|l|l.strip.to_i} 
  # compute highest sum of subarays
  puts line.subarrays.sort {|a,b| a.sum <=> b.sum }.reverse.first.sum 
end
