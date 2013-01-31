class String
  def to_a
    index = 0
    array = []
    while index < self.to_s.length
      array[index] = self.to_s[index]
      index += 1
    end 

    return array
  end 
end 

File.read(ARGV[0]).split("\n").each do |line| 
	chars = line.downcase.gsub(/\W/, '').to_a
  
  # find the frequency of each letter
  # compress the array into unique letters

  letter_counts = []
  chars.uniq.each_with_index do |char, i|
    letter_counts[i] = chars.grep(char).size
  end 

  # Sort them in order of most to least frequent
  frequencies = letter_counts.sort.reverse

  # Counting back from 26 multiply the frequency 
  multiplier = 27
  max_beauty_score = frequencies.inject(0) { |sum, freq| 
    multiplier -= 1 
    sum + freq * multiplier
  }

  puts max_beauty_score
end 