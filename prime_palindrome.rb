# Write a program to determine the biggest prime palindrome under 1000.

class Fixnum
  def prime?
    square = Math.sqrt(self).floor
  
    mods = (2..square).collect do |n|  
      self % n
    end 
  
    !(mods.uniq.include?(0))
  end

  def palendrome?
    self.to_s.reverse == self.to_s
  end
end 

(2..999).to_a.reverse.each do |n|
  if n.prime? && n.palendrome? 
    puts n
    break
  end
end 

