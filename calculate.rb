require './matcher'

# This is the Calculator module, it consists of the add() method which will take the input string
# and return the expected output. Ex: add("1,2") will return 3

module Calculator
    include Matcher

    def self.add(input_string)
        # If the input is an empty string like this: add(""), then 0 is returned
        return 0 if input_string.empty?
        if input_string =~ REGEXP
            # Defining a lambda(anonymous function) to process input numbers in an array.
            # String format numbers in the array are converted to integers.
            # Input numbers having a value greater than 1000 are rejected.
            rect = ->(arr){arr.map(&:to_i).reject{|n| n > 1000 }}
            # This is the first scenario with comma-seperated numbers as input without any change to the delimiter.
            if $1.nil?
                numbers = rect.($2.split(","))
            # This is the second scenario with custom delimiters.
            # A regular expression union is created using the delimeters to split the input into array of numbers.
            else
                numbers = rect.($2.split(Regexp.union($1.gsub(/^\[|\]$/,"").split("]["))))
            end
            negetive_values = numbers.select{|n| n < 0 }
            # Returning all the negetive numbers in case present in input
            if negetive_values.count > 0
                return "negatives not allowed: "+negetive_values.join(",")
            # Returning the sum
            else
                return numbers.reduce(:+)
            end
        else
            puts "Does not match"
        end
    end

end
print Calculator.add("1,-2,3,-4")