RSpec.describe 'raise_error matcher' do
  def some_method
    x
  end

  def some_another_method
    raise CustomError
  end

  class CustomError < StandardError; end

  it 'can check for any error' do
    expect { some_method }.to raise_error(NameError)
    expect { 10 / 0 }.to raise_error(ZeroDivisionError)
    expect { some_another_method }.to raise_error(CustomError)
  end
end

# is_expected is not allowed here as a shortcut
