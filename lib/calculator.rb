module Calculator
  def self.add(numbers)
    return 0 if numbers.empty?
    if numbers =~ /^(?:\/{2}(\[\D+|\W+|\S+\])\n)*((?:\d+(?:\D+|\W+|\S+))*\d+)$/m
      numbers = $1.nil? ? $2.split(",").map(&:to_i).reject{|n| n > 1000 } : $2.split(Regexp.union($1.gsub(/^\[|\]$/,"").split("]["))).map(&:to_i).reject{|n| n > 1000 }
      negetive_values = numbers.select{|n| n < 0 }
      negetive_values.count > 0 ? "negative numbers not allowed: "+negetive_values.join(",") : numbers.reduce(:+)
    end
  end
end