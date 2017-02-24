require 'kudomon'

describe Kudomon do

  subject(:kudomon) { Kudomon.new([1,2]) }

  it "is initialized with a 2d grid position" do
    expect(subject.position).to eq([1,2])
  end

  describe '#deduct' do
    it 'reduces health points by the amount of damage' do
      subject.health_points = 10
      subject.deduct(10)
      expect(subject.health_points).to eq(0)
    end
  end


end
