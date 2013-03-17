class ArithmeticSequence

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

end


if __FILE__ == $0
  s = ArithmeticSequence.new(1, 2)
  puts s[4]
  puts s[4]
  s[4] = 2
  puts s[4]
  puts s[5]
end
