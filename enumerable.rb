module MyEnumerable
  def all?
    condition = true
    each { |n| condition = false unless yield n }
    condition
  end

  def any?
    condition = false
    each { |n| condition = true if yield n }
    condition
  end

  def filter
    arr = []
    each { |n| arr.push(n) if yield n }
    arr
  end
end
