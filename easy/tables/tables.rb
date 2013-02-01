# Print out the table in a matrix like fashion, 
# each number formatted to a width of 4 
# (The numbers are right-aligned and strip out leadeing/trailing 
# spaces on each line).

# Create a 12x12 matrix, an array of arrays

(1..12).to_a.each do |row|
  columns = (1..12).to_a 
  columns.map! { |n| "%04s" % (n * row) }
  puts columns.join("").strip
end 

