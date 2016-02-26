require '.dict.rb'

# create a mapping of state to abbreviation
states = Dict.new()
Dict.set(states, 'Oregon', 'OR')
Dict.set(states, 'Florida', 'FL')
Dict.set(states, 'California', 'CA')
Dict.set(states, 'New York', 'NY')
Dict.set(states, 'Michigan', 'MI')

# create a basic set of states and some cities in them
cities = Dict.new()
Dict.set(cities, 'CA', 'San Francisco')
Dict.set(cities, 'MI', 'Detroit')
Dict.set(cities, 'FL', 'Jacksonville')

# add some more cities
Dict.set(cities, 'NY', 'New York')
Dict.set(cities, 'OR', 'Portland')

separator = puts '-' * 10

# puts out some cities
puts separator
puts "NY state has: #{Dict.get(cities, 'NY')}"
puts "OR state has: #{Dict.get(cities, 'OR')}"

# puts some states
puts separator
puts "Michigan's abbreviation is: #{Dict.get(states, 'Michigan')}"
puts "Florida's abbreviation is: #{Dict.get(states, 'Florida')}"

# do it by using the state then cities dict
puts separator
puts "Michigan has: #{Dict.get(cities, Dict.get(states, 'Michigan'))}"
puts "Florida has: #{Dict.get(cities, Dict.get(states, 'Florida'))}"

# puts every state abbreviation
puts separator
Dict.list(states)

# puts every city in state
puts separator
Dict.list(cities)

puts separator
# by default ruby says 'nil' when something isn't in there
state = Dict.get(states, 'Texas')

puts 'Sorry, no Texas.' unless state

# default values using ||= with the nil result
city = Dict.get(cities, 'TX', 'Does not Exist')
puts "The city for the state 'TX' is: #{city}"
