require 'attack'

describe Attack do

  let(:psychic_kudomon) { double :kudomon, type: :psychic, combat_points: 10, deduct: nil }
  let(:electric_kudomon) { double :kudomon, type: :electric, combat_points: 10, deduct: nil }
  let(:rock_kudomon) { double :kudomon, type: :rock, combat_points: 10, deduct: nil }
  let(:grass_kudomon) { double :kudomon, type: :grass, combat_points: 10, deduct: nil }
  let(:fire_kudomon) { double :kudomon, type: :fire, combat_points: 10, deduct: nil }
  let(:water_kudomon) { double :kudomon, type: :water, combat_points: 10, deduct: nil }
  subject(:attack) { described_class.new(water_kudomon, grass_kudomon) }

  it 'has an attacker and a receiver' do
    expect(subject.receiver).to eq(grass_kudomon)
    expect(subject.attacker).to eq(water_kudomon)
  end

  it 'calls deduct on the receiver with attackers combat points' do
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

  it 'deducts 2x points if grass vs rock' do
    expect(rock_kudomon).to receive(:deduct).with(20)
    described_class.new(grass_kudomon, rock_kudomon)
  end

  it 'deducts 2x points if rock vs electric' do
    expect(electric_kudomon).to receive(:deduct).with(20)
    described_class.new(rock_kudomon, electric_kudomon)
  end

  it 'deducts 2x points if electric vs water' do
    expect(water_kudomon).to receive(:deduct).with(20)
    described_class.new(electric_kudomon, water_kudomon)
  end

  it 'deducts 2x points if psychic vs water' do
    expect(water_kudomon).to receive(:deduct).with(20)
    described_class.new(psychic_kudomon, water_kudomon)
  end

  it 'deducts 2x points if psychic vs fire' do
    expect(fire_kudomon).to receive(:deduct).with(20)
    described_class.new(psychic_kudomon, fire_kudomon)
  end

  it 'deducts 2x points if psychic vs grass' do
    expect(grass_kudomon).to receive(:deduct).with(20)
    described_class.new(psychic_kudomon, grass_kudomon)
  end

  it 'deducts 2x points if psychic vs rock' do
    expect(rock_kudomon).to receive(:deduct).with(20)
    described_class.new(psychic_kudomon, rock_kudomon)
  end

  it 'deducts 2x points if psychic vs electric' do
    expect(electric_kudomon).to receive(:deduct).with(20)
    described_class.new(psychic_kudomon, electric_kudomon)
  end

  it 'deducts 1x points if psychic vs itself' do
    expect(psychic_kudomon).to receive(:deduct).with(10)
    described_class.new(psychic_kudomon, psychic_kudomon)
  end
end
