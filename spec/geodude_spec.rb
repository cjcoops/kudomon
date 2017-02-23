require 'geodude'

describe Geodude do

  it "has type rock" do
    geodude = Geodude.new([1,2])
    expect(geodude.type).to eq(:rock)
  end

end
