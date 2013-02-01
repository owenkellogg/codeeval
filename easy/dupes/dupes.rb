
def dedupe(line)
	line.split(",").uniq.join(",")
end 

File.read(ARGV[0]).split("\n").each do |line|
	puts dedupe(line)
end 