# pulls the filename from the arguments
# filename = ARGV.first
filename = $stdin.gets.chomp

# opens the filename
txt = open(filename)

puts "Here's your file #{filename}:"
# prints the contents of the file
print txt.read

txt.close

# asks for a new filename
print 'Type the filename again: '
file_again = $stdin.gets.chomp

# opens the new file
txt_again = open(file_again)

# prints the contents of the new file
print txt_again.read

txt_again.close
