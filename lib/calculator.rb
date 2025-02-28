module Calculator
  def self.add(numbers)
    return 0 if numbers.empty?
    numbers.scan(/\d{1}/).map(&:to_i).reduce(:+)
  end
end