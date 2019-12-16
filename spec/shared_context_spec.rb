RSpec.shared_context 'common' do
  before do
    @foods = []
  end

  def helper_method
    statement = 'This is test method'
  end

  let(:variable) { [1,2,3] }
end

RSpec.describe 'first example group' do
  include_context 'common'

  it 'can use outside instance variables' do
    expect(@foods.length).to eq(0)
    @foods << 'Sushi'
    expect(@foods.length).to eq(1)
  end

  it 'can reuse instance variables across different variables' do
    expect(@foods.length).to eq(0)
  end

  it 'can use shared helper method' do
    new_statement = 'This is test method'
    expect(helper_method).to eq(new_statement)
  end
end

RSpec.describe 'second example in different file' do
  include_context 'common'

  it 'can use shared let variable' do
    expect(variable.length).to eq(3)
    expect(variable).to eq([1,2,3])
  end
end