class Fibs

  include Enumerable

  def initialize(max)
    @max = max
  end

  def each
    a, b = 1, 1
    while a <= @max
      yield a
      a, b = b, a + b
    end
  end

end


if __FILE__ == $0
  fibs = Fibs.new(1000)

  fibs.each { |f| print f, " " }
  puts

  fibs.select { |f| f % 2 == 0 }.each { |f| print f, " " }
  puts

  puts fibs.include?(233)
  puts fibs.include?(234)
  puts fibs.max
  puts fibs.min
end
