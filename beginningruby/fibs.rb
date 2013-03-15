class Fibs

    def self.upto(max)
      a, b = 1, 1
      while a <= max
        yield a
        a, b = b, a + b
      end
    end

end


if __FILE__ == $0
  Fibs.upto(1000) { |f| print f, " " }
  puts
end
