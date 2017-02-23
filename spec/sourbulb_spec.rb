require 'sourbulb'

describe Sourbulb do

  it "has type grass" do
    sourbulb = KudomonGenerator.new(Sourbulb, [1,2])
    expect(sourbulb.type).to eq(:grass)
  end

end
