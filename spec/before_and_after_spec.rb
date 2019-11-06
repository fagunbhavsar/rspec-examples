RSpec.context 'before and after hooks' do

  before(:context) do
    puts 'Before context'
  end

  after(:context) do
    puts 'After context'
  end

  before(:example) do
    puts 'Before example'
  end

  after(:example) do
    puts 'After example'
  end

  it 'just an example' do
    expect(5 * 4).to eq(20)
  end

  it 'just another example' do
    expect(3 - 2).to eq(1)
  end
end
