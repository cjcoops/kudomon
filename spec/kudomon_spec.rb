require 'kudomon_generator'
require 'kudomon'
require 'sourbulb'

describe Kudomon do

  subject(:kudomon) { KudomonGenerator.new(Sourbulb, [1,2]) }

  it "is initialized with a 2d grid position" do
    expect(subject.position).to eq([1,2])
  end

end
