class ArithmeticSequence

  include Enumerable

  def initialize(start, step)
    @start = start
    @step = step
    @changed = {}
  end

  def [](key)
    if @changed.has_key?(key)
      @changed[key]
    else
      @start + @step * key
    end
  end

  def []=(key, value)
    @changed[key] = value
  end

  def each
    i = 0
    loop do
      yield self[i]
      i += 1
    end
  end

end


if __FILE__ == $0
  s = ArithmeticSequence.new(1, 2)
  p s.take(11)
  p s.take_while { |e| e <= 10  }
  puts s[4]
  puts s[4]
  s[4] = 2
  puts s[4]
  puts s[5]
end
