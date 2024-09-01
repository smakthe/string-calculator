require './matcher'
module Calculator
    include Matcher

    def self.add(input_string)
        return 0 if input_string.empty?
        if input_string =~ REGEXP
            rect = ->(arr){arr.map(&:to_i).reject{|n| n > 1000 }}
            if $1.nil?
                numbers = rect.($2.split(","))
            else
                numbers = rect.($2.split(Regexp.union($1.gsub(/^\[|\]$/,"").split("]["))))
            end
            negetive_values = numbers.select{|n| n < 0 }
            if negetive_values.count > 0
                return "negatives not allowed: "+negetive_values.join(",")
            else
                return numbers.reduce(:+)
            end
        else
            puts "Does not match"
        end
    end

end