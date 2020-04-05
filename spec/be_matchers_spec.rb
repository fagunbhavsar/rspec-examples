#falsy - false, nil
# truthy - everything else except falsy

RSpec.describe 'be matchers' do
  it 'test for truthiness/falsyness' do
    expect(true).to be_truthy
    expect(false).to be_falsy
    expect(nil).to be_falsy
    expect(1).to be_truthy
    expect(1.3).to be_truthy
    expect(12345678.34567990).to be_truthy
    expect([]).to be_truthy
    expect([1,2,3]).to be_truthy
    expect({}).to be_truthy
  end

  it 'test for nil' do
    my_hash = {a: 2}
    expect(my_hash[:b]).to be_nil
    expect(my_hash[:c]).to be(nil)
  end
end