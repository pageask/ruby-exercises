class Bird

  def initialize
    @hungry = true
  end

  def eat
    if @hungry
      puts 'Aaaah...'
      @hungry = false
    else
      puts 'No, thanks!'
    end
  end

end


if __FILE__ == $0
  bird = Bird.new
  bird.eat
  bird.eat
end
