require 'sourbulb'

describe Sourbulb do

  it "has type grass" do
    sourbulb = Sourbulb.new([1,2])
    expect(sourbulb.type).to eq(:grass)
  end

end
