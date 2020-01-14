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
      #expect(c).not_to eql('3')

      expect(a).not_to eql(b)

      expect(a).to eql(3.0)
      expect(b).to eql(3)
    end

    describe 'equal and be matchers' do
      let(:c) { [1,2,3] }
      let(:d) { [1,2,3] }
      let(:e) { c }

      it 'equal cares about object identity' do
        expect(c).to eq(d)
        expect(c).to eql(d)

        expect(c).to equal(e)
        expect(c).to be(e)

        expect(c).not_to equal(d)
        expect(c).not_to equal([1,2,3])
      end
    end
  end
end