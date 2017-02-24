require 'attack'

describe Attack do

  let(:kudomon) { double :kudomon }
  subject(:attack) { described_class.new(kudomon)}

  it 'is initialized with a kudomon who is receiving the attack' do
    expect(subject.kudomon).to eq(kudomon)
  end
end
