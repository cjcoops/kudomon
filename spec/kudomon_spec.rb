require 'kudomon_generator'
require 'kudomon'
require 'sourbulb'

describe Kudomon do

  let(:sourbulb) { double :sourbulb, new: nil}

  it "is initialized with a 2d grid position" do
    kudomon = KudomonGenerator.new(Sourbulb, [1,2])
    expect(kudomon.position).to eq([1,2])
  end

end
