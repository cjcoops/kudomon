require_relative '../../lib/game'
require_relative '../../lib/trainer'
require_relative '../../lib/abra'
require_relative '../../lib/geodude'

describe 'Game features' do
  before(:each) do
    @game = Game.new
    @trainer_1 = Trainer.new([3,3])
    @trainer_2 = Trainer.new([4,4])
    @abra = Abra.new([3,4])
    @geodude = Geodude.new([7,8])
    @game.add_trainer(@trainer_1)
    @game.add_trainer(@trainer_2)
    @game.spawn_kudomon(@abra)
    @game.spawn_kudomon(@geodude)
  end

  it 'trainers can see which kudomon are nearby' do
    expect(@trainer_1.find_nearby(@game.kudomons)).to include(@abra)
    expect(@trainer_1.find_nearby(@game.kudomons)).not_to include(@geodude)
  end

  it 'trainers can catch nearby kudomon' do
    @trainer_1.catch(@abra)
    expect(@trainer_1.collection).to include(@abra)
    expect{@trainer_1.catch(@geodude)}.to raise_error("Kudomon is too far away!")
  end

  it 'different trainers are able to catch the same kudomon' do
    @trainer_1.catch(@abra)
    expect{@trainer_1.catch(@abra)}.to raise_error("Kudomon already been caught!")
    expect(@trainer_2.find_nearby(@game.kudomons)).to include(@abra)
    expect{@trainer_2.catch(@abra)}.not_to raise_error
  end


end
