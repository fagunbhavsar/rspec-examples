#Questions for this assignment
#What is an alternate way to write the assertion below?

#Write an assertion that validates that every element in the array [10, 20, 30] is even.
#Write an assertion that validates that every element in the array [0, 1, 2] is greater than or equal to 0.
#Which of the values below are truthy and which are falsy? Submit your answer as two organized lists.

RSpec.describe "Matchers assignment" do
  it 'This is an overall assignment' do
    expect({}.empty?).to be(true)
    expect({}).to be_empty
    set = [10,20,30]
    expect(set).to all(be_even)
  end
end


