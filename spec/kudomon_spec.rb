require 'kudomon'

describe Kudomon do

  subject(:kudomon) { Kudomon.new([1,2]) }

  it "is initialized with a 2d grid position" do
    expect(subject.position).to eq([1,2])
  end

  describe '#deduct' do
    it 'reduces health points by the amount of damage inflicted' do
      subject.health_points = 10
      subject.deduct(10)
      expect(subject.health_points).to eq(0)
    end
  end

  describe '#knocked_out?' do
    it 'returns false if kudomon HP > 0' do
      subject.health_points = 10
      expect(subject.knocked_out?).to be false
    end

    it 'returns true if kudomon HP <= 0' do
      subject.health_points = 0
      expect(subject.knocked_out?).to be true
    end
  end
end
