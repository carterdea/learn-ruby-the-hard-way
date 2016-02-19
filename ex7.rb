puts 'Mary had a little lamb.'
# prints the string "snow". Super inefficient and a waste of memory :)
puts "Its fleece was white as #{'snow'}."
puts 'And everywhere that Mary went.'
puts '.' * 10 # what'd that do? it printed that period 10x

# defines a bunch of letters 1 by 1. Very inefficient
end1 = 'C'
end2 = 'h'
end3 = 'e'
end5 = 's'
end7 = 'B'
end8 = 'u'
end9 = 'r'
end10 = 'g'

# watch that print vs puts on the line what's it do? puts has a new line print doesn't?
# prints each letter, variable by variable
print end1 + end2 + end3 + end3 + end5 + end3
puts end7 + end8 + end9 + end10 + end3 + end9
