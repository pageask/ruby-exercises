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
    undef_method :method
  end

  begin
    p child.method
  rescue NoMethodError => e
    p e
  end

end
