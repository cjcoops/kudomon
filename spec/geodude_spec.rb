require 'geodude'

describe Geodude do

  it { expect(described_class).to be < Kudomon }

  subject(:geodude) { described_class.new([1,2]) }

  it "has type rock" do
    expect(subject.type).to eq(:rock)
  end

  it "has base health points of 40" do
    expect(subject.health_points).to eq(40)
  end

  it "has combat points of 10" do
    expect(subject.combat_points).to eq(10)
  end

end
