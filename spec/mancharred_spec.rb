require 'mancharred'

describe Mancharred do

  it "has type fire" do
    mancharred = Mancharred.new([1,2])
    expect(mancharred.type).to eq(:fire)
  end

end
