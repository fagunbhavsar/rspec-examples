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
    numbers = [0,1,2]
    expect(numbers).to all(be >= 0)

    values = ["hello", false, 0, -10, [], 99.99, nil, :hello, true, [1, 2, 3]]
    t_values = []
    f_values =[]

    values.each do |val|
      if expect(val).to be_truthy
        t_values.push(val)
      elsif expect(val).to be_falsy
        f_values.push(val)
      end
    end
  end
end


