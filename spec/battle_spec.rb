require 'battle'

describe Battle do

  let(:kudomon_1) { double :kudomon, knocked_out?: false }
  let(:kudomon_2) { double :kudomon, knocked_out?: false }
  let(:loser) {double :kudomon , knocked_out?: true}
  subject(:battle) { described_class.new(kudomon_1, kudomon_2) }

  it "is initialized with 2 kudomon" do
    expect(subject.kudomon_1).to eq(kudomon_1)
    expect(subject.kudomon_2).to eq(kudomon_2)
  end

  describe '#turn' do
    it "kudomon 1 can be randomly chosen to go first" do
      allow(Kernel).to receive(:rand).and_return(0)
      expect(subject.turn).to eq(kudomon_1)
    end

    it "kudomon 2 can be randomly chosen to go first" do
      allow(Kernel).to receive(:rand).and_return(1)
      expect(subject.turn).to eq(kudomon_2)
    end
  end

  describe '#over?' do
    it "battle is over when one of the kudomon is knocked out" do
      finished_battle = Battle.new(loser, kudomon_2)
      expect(finished_battle.over?).to be true
    end

    it "battle is not over when both of the kudomon are still alive" do
      expect(subject.over?).to be false
    end
  end
end
