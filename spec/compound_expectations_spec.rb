RSpec.describe 1024 do
  it 'can test multiple matchers' do
    expect(subject).to be_even.and be > 1000
  end

  it { is_expected.to be_even and be > 1000 }
end

RSpec.describe 'caterpiller' do
  it 'supports multiple matchers on a single line' do
    expect(subject).to start_with('cat').and end_with('piller')
  end

  it { is_expected.to start_with('cat').and end_with('piller') }
end

RSpec.describe [:bangalore, :surat, :pune] do
  it 'can check for multiple possibilities' do
    expect(subject.sample).to eq(:bangalore).or eq(:surat).or eq(:pune)
  end
end