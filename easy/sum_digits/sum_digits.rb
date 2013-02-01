class Fixnum
  def sum_digits
    array = []
    length = self.to_s.length
    index = 0

    # create an array
    while index < length      
      array.push(self.to_s[index].to_i)
      index += 1
    end 

    array.inject(0){|sum, n| sum += n}
  end 
end 

File.read(ARGV[0]).split("\n").each do |line|
  puts line.to_i.sum_digits
end 
