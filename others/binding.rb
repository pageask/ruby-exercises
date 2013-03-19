require_relative 'core_ext'


class Demo

  def initialize(secret)
    @secret = secret
  end

end


if __FILE__ == $0
  demo = Demo.new(99)
  binding = demo.get_binding
  puts eval('@secret', binding)
end
