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
    it "does not match when numbers are absent after comma" do
        expect("1,").not_to match REGEXP
    end
    it "matches with custom delimiter" do
        expect("//[;]\n1;2").to match REGEXP
    end
    it "matches with more than one custom delimiters are present" do
        expect("//[;][&]\n1;2&3").to match REGEXP
    end
    it "matches with multi-character custom delimiters" do
        expect("//[%][***]\n1%2***3").to match REGEXP
    end
end