RSpec.describe 'raise_error matcher' do

  def some_method
    x
  end

  #it 'can check for an error being raised' do
  #expect { some_method }.to raise_error
  #end

  class CustomError < StandardError; end

  it 'can check for a specific error being raised' do
    expect { some_method }.to raise_error(NameError)
    expect { 10/0 }.to raise_error(ZeroDivisionError)
  end

  it 'can check user-defined error' do
    expect{ raise CustomError }.to raise_error(CustomError)
  end
end