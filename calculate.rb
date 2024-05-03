require './matcher'

module Calculator
    include Matcher

    def self.add(input_string)
        return 0 if input_string.empty?
        if input_string =~ REGEXP
            if $1.nil?
                return $2.split(",").map(&:to_i).reduce(:+)
            else

            end
        else
            puts "Does not match"
        end
    end

end
puts Calculator.add("5")