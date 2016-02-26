i = 0
max = 60
increment = 5
numbers = []

while i < max
  puts "At the top i is #{i}"
  numbers.push(i)

  i += increment
  puts 'Numbers now: ', numbers
  puts "At the bottom is is #{i}"
end

puts 'The numbers:'
