RSpec.describe Array do

  it 'Should initiate empty array' do
    expect(subject.length).to eq(0)
    puts subject
    puts subject.class
  end

  it 'Push will insert a value in array' do
    subject.push('value')
    expect(subject.length).to eq(1)
    puts subject.length
    puts subject.class
  end

end
