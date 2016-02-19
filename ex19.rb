# this makes tells how many cheese & crackers the user has, as determined by the passed arguments
def cheese_and_crackers(cheese_count, boxes_of_crackers)
  puts "You have #{cheese_count} cheeses!"
  puts "You have #{boxes_of_crackers} boxes of crackers!"
  puts "Man that's enough for a party!"
  puts "Get a blanket.\n"
end

puts 'We can just give the functions numbers directly:'
# this passes numbers as arguments
cheese_and_crackers(20, 30)

puts 'OR, we can use the variables from our script:'
amount_of_cheese = 10
amount_of_crackers = 50

# this passes variables (set above) as arguments
cheese_and_crackers(amount_of_cheese, amount_of_crackers)

puts 'We can even do math inside too:'
# this does math WHILE the arguments are being passed
cheese_and_crackers(10 + 20, 5 + 6)

puts 'And we can combine the two, variables and math:'
# this uses the variables defined above but it ALSO does math to them
cheese_and_crackers(amount_of_cheese + 100, amount_of_crackers + 1000)

def watch_a_show(show_title, rating)
  if rating > 3
    qualitative_rating = 'great'
  elsif rating < 2
    qualitative_rating = 'bad'
  else
    qualitative_rating = 'ok'
  end
  puts "You watched #{show_title} and it is #{qualitative_rating}"
end

watch_a_show('Breaking Bad', 5)
watch_a_show('Billions', 4)
watch_a_show('House of Cards', 3)
watch_a_show('Making a Murderer', 1)
watch_a_show('Sesame Street', 2)
watch_a_show('Broad City', 1 + 4)
watch_a_show('Bachelor', 10 - 99)
watch_a_show('Workaholics', 2)
watch_a_show('It\'s Always Sunny In Philadelphia', 3)
watch_a_show('Keeping Up with the Kardashians', -10 + 9 + 2)
watch_a_show('The Knick', 1000 * 50)
