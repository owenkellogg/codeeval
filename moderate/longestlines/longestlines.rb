lines = File.read(ARGV[0]).split("\n")

lines_count = lines.shift.to_i

lines.sort! {|b,c| c.length <=> b.length }

lines_count.times { |i| puts lines[i] } 
