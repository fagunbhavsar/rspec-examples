RSpec.describe Array do
  subject(:value) do
    [1,2]
  end

  context 'An array with two values' do
    it { is_expected.to eq([1,2]) }
  end
end
