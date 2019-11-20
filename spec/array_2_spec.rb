RSpec.describe Array do
  subject(:sally) do
    [1,2]
  end

  it 'Array has two elements' do
    expect(subject.length).to eq(2)
    expect(sally.length).to eq(2)
  end

  describe 'Element removal' do
    it 'Removing an element from array' do
      subject.pop
      #sally.pop
      expect(subject.length).to eq(1)
      expect(sally.length).to eq(1)
    end
  end
end
