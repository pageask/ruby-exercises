if __FILE__ == $0

  say_hello = "|H|E|L|L|O|!|"

  str = <<-eos.gsub(/^\s*\|/, '')
    |class Persion
    |
    |  def say_hello
    |    puts "#{say_hello}"
    |  end
    |
    |end
    |
    |
    |if __FILE__ == $0
    |  persion = Persion.new
    |  persion.say_hello
    |end
  eos

  print str

  File.open('/tmp/persion.rb', 'w') do |file|
    file.write str
  end

end
