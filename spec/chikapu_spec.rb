require 'chikapu'

describe Chikapu do

  subject(:chikapu) {described_class.new([1,2])}

  it "has type electric" do
    expect(subject.type).to eq(:electric)
  end

  it "has base HP of 35" do
    expect(subject.health_points).to eq(35)
  end

end
