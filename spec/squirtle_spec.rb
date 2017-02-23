require 'squirtle'

describe Squirtle do

  it "has type water" do
    squirtle = Squirtle.new([1,2])
    expect(squirtle.type).to eq(:water)
  end

end
