require 'abra'

describe Abra do

  it "has type psychic" do
    abra = Abra.new([1,2])
    expect(abra.type).to eq(:psychic)
  end

end
