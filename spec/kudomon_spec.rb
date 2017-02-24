require 'kudomon'

describe Kudomon do

  subject(:kudomon) { Kudomon.new([1,2]) }

  it "is initialized with a 2d grid position" do
    expect(subject.position).to eq([1,2])
  end


end
