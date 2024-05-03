require './matcher'

include Matcher

RSpec.describe Matcher do
    it "matches with the valid format" do
        expect("1,2").to match REGEXP
    end
    it "does not match when only one number is present" do
        expect("1,").not_to match REGEXP
    end
end