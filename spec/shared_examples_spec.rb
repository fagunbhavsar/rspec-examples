RSpec.shared_examples 'Ruby object with 3 elements' do
  it 'returns the number of elements' do
    expect(subject.length).to eq(3)
  end
end

RSpec.describe Array do
  subject { [1,2,3]}
  include_examples 'Ruby object with 3 elements'
end

RSpec.describe String do
  subject { 'abc' }
  include_examples 'Ruby object with 3 elements'
end

RSpec.describe Hash do
  subject { { a: 1, b: 2, c: 3 } }
  include_examples 'Ruby object with 3 elements'
end

class MyClass
  def length
    3
  end
end

RSpec.describe MyClass do
  subject { described_class.new }
end

