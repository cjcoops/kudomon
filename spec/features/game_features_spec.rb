require_relative '../../lib/game'
require_relative '../../lib/trainer'
require_relative '../../lib/abra'

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
  end


end
