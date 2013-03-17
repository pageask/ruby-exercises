require './bird'

class SongBird < Bird

  def initialize
    super
    @sounds = 'Squawk!'
  end

  def sing
    puts @sounds
  end

end


if __FILE__ == $0
  song_bird = SongBird.new
  song_bird.eat
  song_bird.eat
  song_bird.sing
end
