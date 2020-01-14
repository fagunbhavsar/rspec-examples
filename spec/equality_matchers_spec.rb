RSpec.describe 'equality matchers' do
  let(:a) { 3.0 }
  let(:b) { 3 }
  let(:c) { "3" }

  describe 'eq matcher ' do
    it 'only value ad not the data type' do
      expect(a).to eq(3.0)
      expect(b).to eq(3)
      expect(c).to eq('3')
    end
  end

  describe 'eql matcher' do
    it 'both data and types' do
      expect(a).not_to eql(3)
      expect(b).not_to eql(3.0)
      expect(c).not_to eql('3')
    end
  end
end