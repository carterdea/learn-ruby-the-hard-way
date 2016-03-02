mystuff = {'apple' => 'I AM APPLES!'}
puts mystuff['apple']

# require './mystuff.rb'
# MyStuff.apple()

# puts MyStuff::TANGERINE


class MyStuff
  def initialize()
    @tangerine = 'And now a thousand years between'
  end

  attr_reader :tangerine

  def apple
    puts 'I AM CLASSY APPLES!'
  end
end

thing = MyStuff.new
thing.apple
puts thing.tangerine

class Song
  def initialize(lyrics)
    @lyrics = lyrics
  end

  def sing_me_a_song
    @lyrics.each { |line| puts line }
  end
end

happy_bday = Song.new(['Happy birthday to you',
                       'I don\'t want to get sued',
                       'So I\'ll just stop right there'])

rage = ['They rally around the family',
        'With pockets full of shells']

bulls_on_parade = Song.new(rage)

my_funny_valentine = Song.new(['My funny valentine',
                               'Sweet comic valentine',
                               'You make me smile with my heart',
                               'Your looks are laughable',
                               'Unphotographable',
                               'But you\'re my favorite work of art'])

happy_bday.sing_me_a_song
bulls_on_parade.sing_me_a_song
my_funny_valentine.sing_me_a_song