require './matcher'

include Matcher

RSpec.describe Matcher do
    it "matches with comma-seperated inputs" do
        expect("1,2").to match REGEXP
    end
end