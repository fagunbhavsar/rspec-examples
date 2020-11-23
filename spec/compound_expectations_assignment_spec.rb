RSpec.describe 'firetruck' do
  it 'can multiple matchers on a single line' do
    expect(subject).to start_with('fire').and end_with('truck')
  end

  it { is_expected.to start_with('fire').and end_with('truck') }
end

RSpec.describe 20 do
  it 'can validate whether it is an even number and twice to the number 10' do
    expect(subject).to be_even.and respond_to(:times)
  end

  it { is_expected.to be_even.and respond_to(:times) }
end

RSpec.describe [4, 8, 15, 16, 23, 42] do
  it 'can validate whether array has value 42' do
    expect(subject).to include(42).and start_with(4,8,15)
  end

  it { is_expected.to include(42).and start_with(4,8,15) }

end