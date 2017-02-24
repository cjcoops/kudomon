require 'attack'

describe Attack do

  let(:attacker_kudomon) { double :kudomon, combat_points: 10 }
  let(:receiver_kudomon) { double :kudomon, deduct: nil }
  subject(:attack) { described_class.new(attacker_kudomon, receiver_kudomon) }

  describe '#intialization' do
    it 'has an attacker and a receiver' do
      expect(subject.receiver).to eq(receiver_kudomon)
      expect(subject.attacker).to eq(attacker_kudomon)
    end
  end
  
  describe '#run' do
    it 'calls deduct on the receiver' do
      expect(receiver_kudomon).to receive(:deduct).with(10)
      subject.run
    end
  end

end
