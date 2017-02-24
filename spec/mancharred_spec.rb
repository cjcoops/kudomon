require 'mancharred'

describe Mancharred do

  subject(:mancharred) {described_class.new([1,2])}

  it "has type fire" do
    expect(subject.type).to eq(:fire)
  end

  it "has base health points of 39" do
    expect(subject.health_points).to eq(39)
  end

  it "has combat points of 10" do
    expect(subject.combat_points).to eq(10)
  end

end
