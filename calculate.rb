require './matcher'

module Calculator
    include Matcher

    def self.add(input_string)
        return 0 if input_string.empty?
        if input_string =~ REGEXP
        else
            puts "Does not match"
        end
    end
end