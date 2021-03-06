require_relative '../../lib/chikapu'
require_relative '../../lib/mancharred'
require_relative '../../lib/mancharred'
require_relative '../../lib/battle'

describe 'Battle features' do
  before(:each) do
    @chikapu = Chikapu.new([4,4])
    @mancharred = Mancharred.new([5,5])
    @abra = Abra.new([6,6])
    @battle = Battle.new(@chikapu, @mancharred)
    allow(Kernel).to receive(:rand).and_return(1)
  end

  it 'attacks reduce health points of opponent' do
    @battle.attack
    expect(@chikapu.health_points).to eq(25)
    expect(@mancharred.health_points).to eq(39)
  end

  it 'battle is over and returns winner when a kudomon is knocked out' do
    6.times do
      @battle.attack
    end
    expect(@battle.attack).to eq(@mancharred)
    expect(@battle.winner).to eq(@mancharred)
    expect(@battle.winner).not_to eq(@chikapu)
    expect(@chikapu.knocked_out?).to be true
    expect(@mancharred.knocked_out?).to be false
    expect(@chikapu.health_points).to eq(-5)
    expect(@mancharred.health_points).to eq(9)
  end

  it "some kudomon are more effective against others and inflict double points" do
    @abra = Abra.new([6,6])
    @battle = Battle.new(@abra, @mancharred)
    allow(Kernel).to receive(:rand).and_return(0)
    2.times do
      @battle.attack
    end
    expect(@battle.attack).to eq(@abra)
    expect(@battle.winner).to eq(@abra)
    expect(@battle.winner).not_to eq(@mancharred)
    expect(@mancharred.knocked_out?).to be true
    expect(@abra.knocked_out?).to be false
    expect(@mancharred.health_points).to eq(-1)
    expect(@abra.health_points).to eq(34)
  end
end
