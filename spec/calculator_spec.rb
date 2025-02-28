require 'calculator'

RSpec.describe Calculator do
  it "returns 0 for empty string" do
      expect(Calculator.add("")).to eq(0)
  end
  it "returns the number when only one number is present" do
    expect(Calculator.add("1")).to eq(1)
  end
  it "returns the sum for two input numbers seperated by comma" do
    expect(Calculator.add("1,2")).to eq(3)
  end
  it "returns the sum with any amount of numbers present" do
    expect(Calculator.add("1,2,3,4,5")).to eq(15)
  end
  it "returns the sum with a newline character persent" do
    expect(Calculator.add("1,

                      2,3")).to eq(6)
  end
  it "returns the sum for the input numbers seperated by a custom delimiter" do
    expect(Calculator.add("//[;]\n1;2;3")).to eq(6)
  end
  it "returns the sum for the input numbers seperated by more than one custom delimiters" do
    expect(Calculator.add("//[;][&]\n1;2&3")).to eq(6)
  end
end