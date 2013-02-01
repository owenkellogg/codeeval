lines = File.read(ARGV[0]).split("\n")

lines.each do |line|
  s, t = line.split(",")
  out = s.rindex(t)

  unless out
    out = -1
  end 

  puts out
end 