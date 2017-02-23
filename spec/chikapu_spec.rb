require 'chikapu'

describe Chikapu do

  it "is initialized with a 2d grid position" do
    chikapu = Kudomon.new(Chikapu, [1,2])
    expect(chikapu.position).to eq([1,2])
  end

  it "has type electric" do
    chikapu = Kudomon.new(Chikapu, [1,2])
    expect(chikapu.type).to eq(:electric)
  end

end
