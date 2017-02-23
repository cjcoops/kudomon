require 'trainer'

describe Trainer do

  let(:nearby_kudomon_1) { double :kudomon, position: [5,6] }
  let(:nearby_kudomon_2) { double :kudomon, position: [4,6] }
  let(:nearby_kudomon_3) { double :kudomon, position: [4,4] }
  let(:far_kudomon_4) { double :kudomon, position: [5,3] }
  let(:far_kudomon_5) { double :kudomon, position: [3,7] }
  let(:kudomon_array) {[ nearby_kudomon_1,
                    nearby_kudomon_2,
                    nearby_kudomon_3,
                    far_kudomon_4,
                    far_kudomon_5]}

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
      subject.catch(nearby_kudomon_1)
      expect(subject.collection).to include(nearby_kudomon_1)
    end

    it "raises an error if the kudomon is already in the collection" do
      subject.catch(nearby_kudomon_1)
      expect{subject.catch(nearby_kudomon_1)}.to raise_error("Kudomon already been caught!")
    end
  end

  describe '#find_nearby' do

    subject(:trainer) {described_class.new(position: [5,5])}

    it "returns all kudomon which are within one cell in all 8 directions" do
      expect(subject.find_nearby(kudomon_array)).to include(nearby_kudomon_1,nearby_kudomon_2,nearby_kudomon_3)
      expect(subject.find_nearby(kudomon_array)).not_to include(far_kudomon_4,far_kudomon_5)
    end

    it "will not return kudomon which are already in the collection" do
      subject.catch(nearby_kudomon_1)
      expect(subject.find_nearby(kudomon_array)).to include(nearby_kudomon_2,nearby_kudomon_3)
      expect(subject.find_nearby(kudomon_array)).not_to include(nearby_kudomon_1,far_kudomon_4,far_kudomon_5)
    end
  end

  describe '#is_nearby?' do

    subject(:trainer) {described_class.new(position: [5,5])}

    xit "returns true when kudomon is within one cell in all 8 directions" do
      allow(kudomon).to receive(:position).and_return([5,6])
      expect(subject.is_nearby?(kudomon)).to be true
      allow(kudomon).to receive(:position).and_return([4,6])
      expect(subject.is_nearby?(kudomon)).to be true
      allow(kudomon).to receive(:position).and_return([4,4])
      expect(subject.is_nearby?(kudomon)).to be true
    end

    xit "returns false when kudomon further than one cell away in any direction" do
      allow(kudomon).to receive(:position).and_return([5,3])
      expect(subject.is_nearby?(kudomon)).to be false
      allow(kudomon).to receive(:position).and_return([3,7])
      expect(subject.is_nearby?(kudomon)).to be false
    end
  end
end
