require 'attack'

describe Attack do

  let(:psychic_kudomon) { double :kudomon, type: :psychic, combat_points: 10, deduct: nil}
  let(:electric_kudomon) { double :kudomon, type: :electric, combat_points: 10, deduct: nil}
  let(:rock_kudomon) { double :kudomon, type: :rock, combat_points: 10, deduct: nil}
  let(:grass_kudomon) { double :kudomon, type: :grass, combat_points: 10, deduct: nil}
  let(:fire_kudomon) { double :kudomon, type: :fire, combat_points: 10, deduct: nil}
  let(:water_kudomon) { double :kudomon, type: :water, combat_points: 10, deduct: nil}
  subject(:attack) { described_class.new(water_kudomon, grass_kudomon) }

  it 'has an attacker and a receiver' do
    expect(subject.receiver).to eq(grass_kudomon)
    expect(subject.attacker).to eq(water_kudomon)
  end

  it 'calls deduct on the receiver' do
    expect(grass_kudomon).to receive(:deduct).with(10)
    described_class.new(water_kudomon, grass_kudomon)
  end

  it 'deducts 2x points if water vs fire' do
    expect(fire_kudomon).to receive(:deduct).with(20)
    described_class.new(water_kudomon, fire_kudomon)
  end

  it 'deducts 2x points if fire vs grass' do
    expect(grass_kudomon).to receive(:deduct).with(20)
    described_class.new(fire_kudomon, grass_kudomon)
  end


end
