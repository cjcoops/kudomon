require 'squirtle'

describe Squirtle do

  it "has type grass" do
    squirtle = KudomonGenerator.new(Squirtle, [1,2])
    expect(squirtle.type).to eq(:water)
  end

end
