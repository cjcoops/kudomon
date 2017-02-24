require 'game'

describe Game do

  let(:kudomon) { double :kudomon }
  let(:trainer) { double :trainer }
  subject(:game) { described_class.new()}

  it "has no trainers to begin with" do
    expect(game.trainers).to be_empty
  end

  it "has no kudomon to begin with" do
    expect(game.kudomons).to be_empty
  end

  describe '#spawn_kudomon' do
    it 'adds the kudomon to the kudomons array' do
      game.spawn_kudomon(kudomon)
      expect(game.kudomons).to include(kudomon)
    end
  end

  describe '#add_trainer' do
    it 'adds the trainer to the trainer array' do
      game.add_trainer(trainer)
      expect(game.trainers).to include(trainer)
    end
  end

end
