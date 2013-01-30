# Write a program to determine the biggest prime palindrome under 1000.

class Fixnum
  def prime?
    square = Math.sqrt(self).floor
    mods = []
  
    (2..square).each do |n|  
      mods.push(self % n)
    end 
  
    !(mods.uniq.include?(0))
  end

  def palendrome?
    self.to_s.reverse == self.to_s
  end
end 

prime_palendromes = []

(2..999).each do |n|
  if n.prime? && n.palendrome?
    prime_palendromes.push(n)
  end
end 

puts prime_palendromes.last