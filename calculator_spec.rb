require './calculator'

include Calculator

RSpec.describe Calculator do
    it "returns the sum for the input numbers seperated by comma" do
        expect(Calculator.add("1,2,3")).to eq(6)
    end
end