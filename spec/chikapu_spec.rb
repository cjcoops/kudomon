require 'chikapu'

describe Chikapu do

  it "has type electric" do
    chikapu = Chikapu.new([1,2])
    expect(chikapu.type).to eq(:electric)
  end

end
