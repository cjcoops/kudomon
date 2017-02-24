require 'attack'

describe Attack do

  let(:attacker_kudomon) { double :kudomon }
  let(:receiver_kudomon) { double :kudomon }
  subject(:attack) { described_class.new(attacker_kudomon, receiver_kudomon) }

  it 'is initialized with an attacker and a receiver' do
    expect(subject.receiver).to eq(receiver_kudomon)
    expect(subject.attacker).to eq(attacker_kudomon)
  end
end
