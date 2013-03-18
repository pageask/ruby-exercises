if __FILE__ == $0

  say_hello = "|H|E|L|L|O|!|"

  str = <<-eos.gsub(/^\s*\|/, '')
    |#!/usr/bin/env ruby
    |
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

  file_name = '/tmp/persion.rb'

  begin
    File.open(file_name, 'w') do |file|
      file.write str
    end
    File.chmod 0755, file_name
  rescue Exception => e
    p e
  end

end
