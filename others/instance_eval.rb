class Persion

end


if __FILE__ == $0

  Persion.instance_eval do

    def human?
      true
    end

  end

  p Persion.human?

end
