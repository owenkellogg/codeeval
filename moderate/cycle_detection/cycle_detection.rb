
class Array
  def sequence? 
    # is a sequence if divisible by identical subarrays
    length = self.length

    if length == 1 
      sequence =  false
    end

    if length > 1 && length < 4 
      if self.uniq.count == 1
        sequence = true
      else
        sequence = false
      end
    end

    if length > 3  
      matches_count = 0
  
      (2..(length / 2).floor).each do |index|
        if length % index == 0 
          array = self
          new_array = []
          # discard unless length is divisible by index
          (length / index).times do   
            a = []
            index.times { a.push(array.pop) }        
            puts a.join('-')
            new_array.push( a )
          end
          puts "______"
          
          matches_count += 1 if new_array.uniq.count == 1
        end
      end

      sequence = matches_count > 0 ? true : false
    end
    return sequence
  end 

  def first_sequence
    length = self.length

    length.times do |index|
      #puts self[index..(length - 1)].join("-")
      puts self[index..(length - 1)].sequence?
    end  
  end
end 

[1,2,3,4,1,2,3,4].first_sequence
