RSpec.describe 'change matcher' do
  subject { ['a','b','c'] }

  it 'checks that a method changes object state' do
    expect { subject.push('d') }.to change { subject.length }.from(3).to(4)
    expect { subject.push('d') }.to change { subject.length }.by(1)
  end

  it 'checks negative arguments passing in change method' do
    expect { subject.pop }.to change { subject.length }.from(3).to(2)
    expect { subject.pop }.to change { subject.length }.by(-1)
  end
end