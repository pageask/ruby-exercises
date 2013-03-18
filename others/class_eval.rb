class Persion

end


if __FILE__  == $0

  Persion.class_eval do

    def say_hello
      "Hello!"
    end

    def self.human?
      true
    end

  end

  persion = Persion.new
  p persion.say_hello
  p Persion.human?

end
