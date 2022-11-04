module MyEnumerable
  def all?
    value = []
    list.each { |element| value.push(element) if yield element }
    p value.length == list.length
  end

  def any?
    value = []
    list.each { |element| value.push(element) if yield element }
    p !value.empty?
  end

  def filter
    value = []
    list.each { |element| value.push(element) if yield element }
    p value
  end
end
