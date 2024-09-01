require './calculator'

include Calculator

RSpec.describe Calculator do
    it "returns 0 for empty string" do
        expect(Calculator.add("")).to eq(0)
    end
    it "returns the number when only one number is present" do
        expect(Calculator.add("1")).to eq(1)
    end
    it "returns the sum for the input numbers seperated by comma" do
        expect(Calculator.add("1,2,3")).to eq(6)
    end
    it "returns the sum if new line present between input numbers" do
        expect(Calculator.add("1,\n2,3")).to eq(6)
    end
    it "rejects any numbers from input which is greater than 1000" do
        expect(Calculator.add("2,1001")).to eq(2)
    end
    it "rejects all negative numbers from the input" do
        expect(Calculator.add("1,-2,3,-4")).to eq("negatives not allowed: "+"-2,-4")
    end
    it "returns the sum for the input numbers seperated by a custom delimiter" do
        expect(Calculator.add("//[;]\n1;2;3")).to eq(6)
    end
    it "returns the sum for the input numbers seperated by more than one custom delimiters" do
        expect(Calculator.add("//[;][&]\n1;2&3")).to eq(6)
    end
    it "returns the sum for the input numbers seperated by multi-character custom delimiters" do
        expect(Calculator.add("//[%][&][***]\n1%2&3***4")).to eq(10)
    end
end