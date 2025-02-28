module Calculator
  def self.add(numbers)
    return 0 if numbers.empty?
    numbers_list = numbers.scan(/\d{1}/)
    return numbers_list.first.to_i if numbers_list.length < 2 
  end
end