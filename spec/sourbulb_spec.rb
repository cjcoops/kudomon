require 'sourbulb'

describe Sourbulb do

  subject(:sourbulb) {described_class.new([1,2])}

  it "has type grass" do
    expect(subject.type).to eq(:grass)
  end

  it "has base health points of 45" do
    expect(subject.health_points).to eq(45)
  end

  it "has combat points of 10" do
    expect(subject.combat_points).to eq(10)
  end

end
