ten_things = 'Apples Oranges Crows Telephone Light Sugar'

puts 'Wait there are not 10 things in that list. Let\'s fix that'

stuff = ten_things.split(' ')
more_stuff = %w(Day Night Song Frisbee Corn Banana Girl Boy)

# using math to make sure there's 10 items
while stuff.length != 10
  next_one = more_stuff.pop
  puts "Adding: #{next_one}"
  stuff.push(next_one)
  puts "There are #{stuff.length} items now."
end

puts "There we go: #{stuff}"

puts 'Let\'s do some things with stuff.'

# gives you the 2nd value in the stuff array
puts stuff[1]
# gives you the last value in the array (because it goes back)
puts stuff[-1]
# takes the last value off of the array and returns it
puts stuff.pop
puts stuff.join(' ')
puts stuff[3..5].join('#')

real_world_stuff = %w(snowboard water\ cooler surfboard office\ chair cinema\ display mouse headphones couch red\ chair)

puts real_world_stuff.pop
puts real_world_stuff[4]
puts real_world_stuff[-5]
