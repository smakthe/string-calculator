require './calculator'

include Calculator

RSpec.describe Calculator do
    it "returns 0 for empty string" do
        expect(Calculator.add("")).to eq(0)
    end
    it "returns the sum for the input numbers seperated by comma" do
        expect(Calculator.add("1,2,3")).to eq(6)
    end
end