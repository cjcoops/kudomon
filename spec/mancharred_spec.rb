require 'mancharred'

describe Mancharred do

  it "is initialized with a 2d grid position" do
    mancharred = Mancharred.new(position: [1,2])
    expect(mancharred.position).to eq([1,2])
  end

  it "has type fire" do
    mancharred = Mancharred.new(position: [1,2])
    expect(mancharred.type).to eq(:fire)
  end

end
