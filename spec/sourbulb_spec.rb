require 'sourbulb'

describe Sourbulb do

  it "is initialized with a 2d grid position" do
    sourbulb = Sourbulb.new(position: [1,2])
    expect(sourbulb.position).to eq([1,2])
  end

  it "has type grass" do
    sourbulb = Sourbulb.new(position: [1,2])
    expect(sourbulb.type).to eq(:grass)
  end

end
