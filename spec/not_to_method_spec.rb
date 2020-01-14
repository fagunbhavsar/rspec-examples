RSpec.describe 'not_to method' do

  it 'checks the overall functionality of not_to method' do
    expect(5).not_to eq(5)
    expect(6).not_to eq("6")
    expect([1,2]).not_to eq(['1','2'])
  end
end



