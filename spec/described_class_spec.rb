class King
  attr_reader :name

  def initialize(name)
    @name = name
  end
end

RSpec.describe King do
  subject { described_class.new('Rama') }
  let(:krishna) { described_class.new('Krishna') }

  it 'Represents great king' do
    expect(subject.name).to eq('Rama')
    expect(krishna.name).to eq('Krishna')
  end
end