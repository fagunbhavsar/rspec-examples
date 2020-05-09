RSpec.describe 'include matcher' do
  describe 'waiting for godot' do
    it 'checks for substring in the given string' do
    expect(subject).to include('wait')
    expect(subject).to include('waiting')
    expect(subject).to include(' godot')
    expect(subject).to include('for godot')
    end

    it { is_expected.to include('wait') }
    it { is_expected.to include('godot for waiting') }
    it { is_expected.to include('waiting godot') }
  end

  describe ['waiting', 'for', 'godot'] do
    it 'checks for elements inside the array, regardless of order' do
      expect(subject).to include('godot', 'waiting')
      expect(subject).to include('for', 'waiting')
      expect(subject).to include('godot', 'for')
    end
    it { is_expected.to include('waiting', 'godot') }
    it { is_expected.to include('for', 'waiting') }
    it { is_expected.to include('godot', 'for') }
  end

  describe ({ a: 1, b: 2, c: 3 }) do
    it 'checks for keys present in hashmap' do
      expect(subject).to include(:a)
      expect(subject).to include(a: 1, c: 3)
    end

    it { is_expected.to include(:b) }
    it { is_expected.to include(b: 2) }
  end
end