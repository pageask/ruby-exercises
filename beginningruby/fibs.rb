class Fibs

  include Enumerable

  def each
    a, b = 1, 1
    loop do
      yield a
      a, b = b, a + b
    end
  end

end


if __FILE__ == $0
  fibs = Fibs.new
  p fibs.take(10)
  p fibs.take_while { |f| f <= 1000  }
end
