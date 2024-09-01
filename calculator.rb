require './matcher'

module Calculator
    include Matcher

    def self.add(input_string)
        return 0 if input_string.empty?
        if input_string =~ REGEXP
            return input_string[0].to_i if input_string.length == 1
            return input_string.split(",").map(&:to_i).reduce(:+)
        else
            puts "Does not match"
        end
    end

end