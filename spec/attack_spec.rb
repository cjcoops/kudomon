require 'attack'

describe Attack do

  let(:fire_kudomon) { double :kudomon, type: :fire, combat_points: 10, deduct: nil}
  let(:water_kudomon) { double :kudomon, type: :water, combat_points: 10, deduct: nil}
  let(:attacker_kudomon) { double :kudomon, type: nil, combat_points: 10 }
  let(:receiver_kudomon) { double :kudomon, type: nil, deduct: nil }
  subject(:attack) { described_class.new(attacker_kudomon, receiver_kudomon) }

  it 'has an attacker and a receiver' do
    expect(subject.receiver).to eq(receiver_kudomon)
    expect(subject.attacker).to eq(attacker_kudomon)
  end

  it 'calls deduct on the receiver' do
    expect(receiver_kudomon).to receive(:deduct).with(10)
    described_class.new(attacker_kudomon, receiver_kudomon)
  end

  it 'deducts 2x points if water vs fire' do
    expect(fire_kudomon).to receive(:deduct).with(20)
    described_class.new(water_kudomon, fire_kudomon)
  end


end
