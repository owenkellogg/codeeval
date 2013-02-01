# Sum the integers in a file, one per line


integers = File.read(ARGV[0]).split("\n").map!(&:to_i)
puts integers.inject(0) { |sum, n| sum + n }