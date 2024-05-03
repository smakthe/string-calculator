require './matcher'

# This is the Calculator module, it consists of the add() method which will take the input string
# and return the expected output. Ex: add("1,2") will return 3

module Calculator
    include Matcher

    def self.add(input_string)
        # If the input is an empty string like this: add(""), then 0 is returned
        return 0 if input_string.empty?
        if input_string =~ REGEXP
            # This is the first scenario with comma-seperated numbers as input without any change to the delimiter.
            # Input numbers having a value greater than 1000 are rejected
            if $1.nil?
                return $2.split(",").map(&:to_i).reject{|n| n > 1000 }.reduce(:+)
            # This is the second scenario with custom delimiters 
            else
                
            end
        else
            puts "Does not match"
        end
    end

end
puts Calculator.add("2,1001")