require 'abra'

describe Abra do

  it { expect(described_class).to be < Kudomon }

  subject(:abra) {described_class.new([1,2])}

  it "has type psychic" do
    expect(subject.type).to eq(:psychic)
  end

  it "has base health points of 44" do
    expect(subject.health_points).to eq(44)
  end

  it "has combat points of 10" do
    expect(subject.combat_points).to eq(10)
  end

end
