class Array

  def all_fixnums?
    all? { |elem| elem.is_a?(Fixnum) }
  end

end
