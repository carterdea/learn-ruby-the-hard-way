puts "Let's practice everything."
puts 'You\'d need to know \'bout excapes with \\ that do \n newlines and \t tabs.'

# the <<END is a "heredoc".
poem = <<END
\tThe lovely world
with logic so firmly planted
cannot discern \n the needs of love
nor comprehend passion from intuition
and requires an explanation
\n\twhere there is none.
END

puts '------------'
puts poem
puts '------------'

five = 10 - 2 + 4 - 6
puts "This should be five: #{five}"

def secret_formula(started)
  jelly_beans = started * 500
  jars = jelly_beans / 1_000
  crates = jars / 100
  return jelly_beans, jars, crates
end

start_point = 10_000
beans, jars, crates = secret_formula(start_point)

puts "With a starting point of: #{start_point}"
puts "We'd have #{beans} beans, #{jars} jars, an #{crates} crates."

start_point = start_point / 10
