# Convert hex strings into integers

File.read(ARGV[0]).split("\n").each do |line| 
	puts line.to_i(16)
end