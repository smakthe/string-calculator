RSpec.describe Calculator do
  it "returns 0 for empty string" do
      expect(Calculator.add("")).to eq(0)
  end
end