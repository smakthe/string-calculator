require './matcher'

include Matcher

RSpec.describe Matcher do
    it "matches with comma-seperated inputs" do
        expect("1,2").to match REGEXP
    end
    it "matches when only one number is present" do
        expect("1").to match REGEXP
    end
    it "matches with new line present" do
        expect("1,\n2,3").to match REGEXP
    end
end