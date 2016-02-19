input_file = ARGV.first

# prints everything in the file that is passed to it
def print_all(f)
  puts f.read
end

# goes back to the first line (0 == 1st line)
def rewind(f)
  f.seek(0)
end

# prints a single line from the file, w/ the line number printed first
def print_a_line(line_count, f)
  puts "#{line_count}, #{f.gets.chomp}"
end

# opens the file and binds it to the "current_file" variable
current_file = open(input_file)

puts "First let's print the whole file:\n"

# prints every line from the current file
print_all(current_file)

puts "Now let's rewind, kind of like a tape."

# goes back to the first line
rewind(current_file)

puts "Let's print these lines:"

# prints each line 1 by 1
current_line = 1
print_a_line(current_line, current_file)

# goes to the next line
current_line += 1
print_a_line(current_line, current_file)

# goes to the next line
current_line += 1
print_a_line(current_line, current_file)
