RSpec.describe 'contain_exactly matcher' do
  subject { ['a', 'b', 'c'] }

  describe 'long form syntax' do
    it 'should check presence of all elements in array' do
      expect(subject).to contain_exactly('a', 'b', 'c')
      expect(subject).to contain_exactly('c', 'a', 'b')
      expect(subject).to contain_exactly('b', 'c', 'a')
      expect(subject).to contain_exactly('c', 'b', 'a')
      expect(subject).to contain_exactly('b', 'a', 'c')
      expect(subject).to contain_exactly('a', 'c', 'b')
    end
  end

  it { is_expected.to contain_exactly('a','b','c') }
  it { is_expected.to contain_exactly('c','b','a') }
  it { is_expected.to contain_exactly('c','a','b') }
  it { is_expected.to contain_exactly('b','a','c') }
  it { is_expected.to contain_exactly('b','c','a') }
end