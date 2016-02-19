first, second, third = ARGV
print 'Fourth variable? '
fourth = $stdin.gets.chomp
print 'Fifth variable? '
fifth = $stdin.gets.chomp
print 'Sixth variable? '
sixth = $stdin.gets.chomp

# Found the $stdin thing here: http://stackoverflow.com/questions/2166862/why-is-gets-throwing-an-error-when-arguments-are-passed-to-my-ruby-script

puts "Your first variable is: #{first}"
puts "Your second variable is: #{second}"
puts "Your third variable is: #{third}"
puts "Your fourth variable is: #{fourth}"
puts "Your fifth variable is: #{fifth}"
puts "Your sixth variable is: #{sixth}"
