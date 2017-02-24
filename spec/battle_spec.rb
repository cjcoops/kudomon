require 'battle'

describe Battle do

  let(:kudomon_1) { double :kudomon_1, knocked_out?: false }
  let(:kudomon_2) { double :kudomon_2, knocked_out?: false }
  let(:loser) { double :kudomon_loser , knocked_out?: true }
  let(:attack_class) { double :attack_class, new: nil }
  subject(:battle) { described_class.new(kudomon_1, kudomon_2, attack_class) }
  let(:finished_battle) { described_class.new(loser, kudomon_2, attack_class) }

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

  describe '#attack' do
    it 'creates a new instance of Attack on the opponent' do
      allow(Kernel).to receive(:rand).and_return(0)
      expect(attack_class).to receive(:new).with(kudomon_1, kudomon_2)
      subject.attack
    end

    it "returns the winner if the attack has won the battle" do
      allow(Kernel).to receive(:rand).and_return(1)
      allow(kudomon_1).to receive(:knocked_out?).and_return(true)
      expect(subject.attack).to eq(kudomon_2)
    end

    it "switches the turn if the attack has not won the battle" do
      allow(Kernel).to receive(:rand).and_return(1)
      subject.attack
      expect(subject.turn).to eq(kudomon_1)
    end
  end
end
