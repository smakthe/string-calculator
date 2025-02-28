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
end