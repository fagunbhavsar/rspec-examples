RSpec.describe Hash do
  #let(:my_hash) { {} }

  #let(:subject) { Hash.new }
  #puts Hash
  #puts Hash.class

  it 'should start off empty hash' do
    expect(subject.length).to eq(0)
    puts subject
    puts subject.class
    subject[:key] = "value"
    expect(subject.length).to eq(1)
    puts subject.length
  end

  it 'is isolated between examples' do
    expect(subject.length).to eq(0)
    puts subject.length
  end


end