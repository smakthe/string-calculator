require './matcher'

module Calculator
    include Matcher

    def self.add(input_string)
        if input_string =~ REGEXP
            puts $1,$2, $3
        else
            puts "Does not match"
        end
    end
    
end
Calculator.add("1,2")