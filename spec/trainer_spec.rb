require 'trainer'

describe Trainer do

  let(:nearby_kudomon_1) { double :kudomon, position: [5,6] }
  let(:nearby_kudomon_2) { double :kudomon, position: [4,6] }
  let(:nearby_kudomon_3) { double :kudomon, position: [4,4] }
  let(:far_kudomon_1) { double :kudomon, position: [5,3] }
  let(:far_kudomon_2) { double :kudomon, position: [3,7] }
  let(:kudomon_array) { [ nearby_kudomon_1,
                    nearby_kudomon_2,
                    nearby_kudomon_3,
                    far_kudomon_1,
                    far_kudomon_2] }

  let(:kudomon) {double :kudomon}
  subject(:trainer) {described_class.new([5,5])}

  it "is initialized with a 2d grid position" do
    expect(trainer.position).to eq([5,5])
  end

  it "has default coordinates of 1,1" do
    trainer = described_class.new()
    expect(trainer.position).to eq([1,1])
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

    it "raises an error if the kudomon is not nearby" do
      expect{subject.catch(far_kudomon_1)}.to raise_error("Kudomon is too far away!")
    end
  end

  describe '#find_nearby' do

    it "returns all kudomon which are within one cell in all 8 directions" do
      expect(subject.find_nearby(kudomon_array)).to include(nearby_kudomon_1,nearby_kudomon_2,nearby_kudomon_3)
      expect(subject.find_nearby(kudomon_array)).not_to include(far_kudomon_1,far_kudomon_2)
    end

    it "will not return kudomon which are already in the collection" do
      subject.catch(nearby_kudomon_1)
      expect(subject.find_nearby(kudomon_array)).to include(nearby_kudomon_2,nearby_kudomon_3)
      expect(subject.find_nearby(kudomon_array)).not_to include(nearby_kudomon_1,far_kudomon_1,far_kudomon_2)
    end
  end
end
