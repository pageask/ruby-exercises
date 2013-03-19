class String

  def margin
    gsub!(/^\s*\|/, '')
  end

end

class Object

  def get_binding
    binding
  end

end
