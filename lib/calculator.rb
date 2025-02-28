module Calculator
  def self.add(numbers)
    return 0 if numbers.empty?
    if numbers =~ /^(?:\/{2}(\[\D+|\W+|\S+\])\n)*((?:\d+(?:\D+|\W+|\S+))*\d+)$/m
      sanitize = ->(array){ array.map(&:to_i).reject{|number| number > 1000 } }
      numbers = sanitize.($1.nil? ? $2.split(",") : $2.split(Regexp.union($1.gsub(/^\[|\]$/,"").split("]["))))
      negetive_values = numbers.select{|n| n < 0 }
      negetive_values.count > 0 ? "negative numbers not allowed: "+negetive_values.join(",") : numbers.reduce(:+)
    end
  end
end