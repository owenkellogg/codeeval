lines = File.read(ARGV[0]).split("\n")

lines.each do |line|
	if line.length > 0

	  array = line.split(";")[1].split(",")
  
	  buff = []
	  dup = []
  
	  array.each do |n|
	    if buff.include?(n)
	    	dup.push(n)
	    else	
	    	buff.push(n)
	    end 
	  end 
  
	  puts dup.first
	end 
end 
