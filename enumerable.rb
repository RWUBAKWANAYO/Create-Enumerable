module MyEnumerable
  def all?
    condition = true
    each { |n| condition = false unless yield n }
    condition
  end
end
