require 'chikapu'

describe Chikapu do

  subject(:chikapu) {described_class.new([1,2])}

  it "has type electric" do
    expect(subject.type).to eq(:electric)
  end

  it "has base health points of 35" do
    expect(subject.health_points).to eq(35)
  end

  it "has combat points of 10" do
    expect(subject.combat_points).to eq(10)
  end

  describe '#deduct' do
    it 'reduces health points by the amount of damage' do
      subject.deduct(10)
      expect(subject.health_points).to eq(25)
    end
  end

end
