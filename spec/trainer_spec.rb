require 'trainer'

describe Trainer do

  let(:kudomon) {double :kudomon}
  subject(:trainer) {described_class.new()}

  it "is initialized with a 2d grid position" do
    trainer = described_class.new(position: [1,2])
    expect(trainer.position).to eq([1,2])
  end

  it "has default coordinates of 0,0" do
    expect(subject.position).to eq([0,0])
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


end
