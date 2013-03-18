class Parent

  def method
    "Parent Method"
  end

end


class Child < Parent

  def method
    "Child Method"
  end

end


if __FILE__ == $0

  child = Child.new
  p child.method

  Child.class_eval do
    remove_method :method
  end

  p child.method

end
