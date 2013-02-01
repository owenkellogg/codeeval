File.read(ARGV[0]).split("\n").each do |line|
  # break each line into two arrays
	a, b = line.split(";").map!{|l| l.split(",") }

  # find the intersection of each lines' two arrays
  puts ( a & b ).join(",")
end 