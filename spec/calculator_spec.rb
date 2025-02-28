require 'calculator'

RSpec.describe Calculator do
  it "returns 0 for empty string" do
      expect(Calculator.add("")).to eq(0)
  end
  it "returns the number when only one number is present" do
    expect(Calculator.add("1")).to eq(1)
  end
end