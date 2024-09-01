module Calculator
    def self.add(input_string)
        return 0 if input_string.empty?
        return input_string[0].to_i if input_string.length == 1
        return input_string.split(",").map(&:to_i).reduce(:+)
    end
end