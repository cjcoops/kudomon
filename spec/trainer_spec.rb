require 'trainer'

describe Trainer do

  let(:kudomon) {double :kudomon}
  subject(:trainer) {described_class.new()}

  it "is initialized with a 2d grid position" do
    trainer = described_class.new(position: [1,2])
    expect(trainer.position).to eq([1,2])
  end

  it "has default coordinates of 1,1" do
    expect(subject.position).to eq([1,1])
  end

  it 'has an empty collection to begin with' do
    expect(subject.collection).to be_empty
  end

  describe '#move' do
    it "can move to the requested coordinates" do
      subject.move([3,4])
      expect(subject.position).to eq([3,4])
    end
  end

  describe '#catch' do
    it "adds the kudomon to its collection" do
      subject.catch(kudomon)
      expect(subject.collection).to include(kudomon)
    end
  end

  describe '#is_nearby?' do

    subject(:trainer) {described_class.new(position: [5,5])}

    it "returns true when kudomon is within one cell in all 8 directions" do
      allow(kudomon).to receive(:position).and_return([5,6])
      expect(subject.is_nearby?(kudomon)).to be true
      allow(kudomon).to receive(:position).and_return([4,6])
      expect(subject.is_nearby?(kudomon)).to be true
      allow(kudomon).to receive(:position).and_return([4,4])
      expect(subject.is_nearby?(kudomon)).to be true
    end

    it "returns false when kudomon further than one cell away in any direction" do
      allow(kudomon).to receive(:position).and_return([5,3])
      expect(subject.is_nearby?(kudomon)).to be false
      allow(kudomon).to receive(:position).and_return([3,7])
      expect(subject.is_nearby?(kudomon)).to be false
    end
  end
end
