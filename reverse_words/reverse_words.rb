lines = File.read(ARGV[0]).split("\n")

lines.each do |line|
  puts line.split(" ").reverse.join(" ").strip
end 