require 'game'

describe Game do

  let(:grid) {double :grid}
  subject(:game) {described_class.new(grid)}

  it "is initialized with grid" do
    expect(subject.grid).to eq(grid)
  end
end
