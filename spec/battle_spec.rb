require 'battle'

describe Battle do

  let(:kudomon_1) { double :kudomon }
  let(:kudomon_2) { double :kudomon }
  subject(:battle) { described_class.new(kudomon_1, kudomon_2) }

  it "is initialized with 2 kudomon" do
    expect(subject.kudomon_1).to eq(kudomon_1)
    expect(subject.kudomon_2).to eq(kudomon_2)
  end
end
