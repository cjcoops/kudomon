require 'game'

describe Game do

  let(:trainer) { double :trainer }
  let(:trainer_class) { double :trainer_class, new: trainer }
  subject(:game) { described_class.new(trainer_class: trainer_class)}

  it "has no trainers to begin with" do
    expect(game.trainers).to be_empty
  end

  it "has no kudomon to begin with" do
    expect(game.kudomons).to be_empty
  end

  describe '#add_kudomon' do
    
  end

end
