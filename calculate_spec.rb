require './calculate'

include Calculator

RSpec.describe Calculator do
    it "returns 0 for empty string" do
        expect(Calculator.add("")).to eq(0)
    end
    it "returns the sum for the input numbers seperated by comma" do
        expect(Calculator.add("1,2,3")).to eq(6)
    end
    it "rejects any numbers from input which is greater than 1000" do
        expect(Calculator.add("2,1001")).to eq(2)
    end
end