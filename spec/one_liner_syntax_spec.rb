RSpec.describe 'shorthand syntax' do
  subject { "True" }

  context 'with classic syntax' do
    it 'should equal to True' do
      expect(subject).to eq("True")
    end
  end

  context 'with one-liner syntax' do
    it { is_expected.to eq("True") }
  end

end