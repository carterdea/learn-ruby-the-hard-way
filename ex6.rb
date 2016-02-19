# defines the number of people
types_of_people = 10
x = "There are #{types_of_people} of people."

# defines what binary value we want to tell in the joke
binary = 'binary'

# defines what tense of "do not" we want to use
do_not = 'don\'t'

# the punchline :)
y = "Those who know #{binary} and those who #{do_not}."

# tells the joke the first time
puts x
puts y

# tells the joke a second time (for effect)
puts "I said: #{x}."
puts "I also said: '#{y}'."

# defines if the joke is funny or not (it's not)
hilarious = false
joke_evaluation = "Isn't that joke so funny?! #{hilarious}"

puts joke_evaluation

w = 'This is the left side of...'
e = 'a string with a right side.'

# concatenates these two strings!!
puts w + e
