class String

  def palindrome?
    no_space_downcase = gsub(/\s+/, "").downcase
    no_space_downcase == no_space_downcase.reverse
  end

end
