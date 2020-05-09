RSpec.describe 'start_with and end_with matchers' do
  describe 'Malayalam' do
    it 'should check for substring in the beginning or in the end' do
      expect(subject).to start_with('Malay')
      #expect(subject).to start_with('malay')
      #expect(subject).to end_with('Malay')
      expect(subject).to end_with('yalam')
    end
    it { is_expected.to start_with('Malay') }
    it { is_expected.to end_with('yalam') }
  end
  describe [1,2,3,4,5] do
    it 'should check for elements in the beginning or in the end of an array' do
      expect(subject).to start_with(1)
      expect(subject).to start_with(1,2)
      expect(subject).to start_with(1,2,3)
      expect(subject).to end_with(5)
      expect(subject).to end_with(4,5)
      expect(subject).to end_with(3,4,5)
    end
  end


end