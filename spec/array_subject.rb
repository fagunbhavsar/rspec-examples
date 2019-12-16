RSpec.describe Array do
  subject(:value) do
    [1,2]
  end

  it 'return the array with values' do
    expect(subject).to eq([1,2])
  end
end
