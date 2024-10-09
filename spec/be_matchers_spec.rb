RSpec.describe 'be_matchers spec' do
  it 'checks a hash for emptiness' do
    expect({}.empty?).to be(true)
  end

  it 'checks a hash for emptiness in a better way' do
    expect({}).to be_empty
  end

  it 'expects that all the numbers in an array will be even' do
    expect([10, 20, 30]).to all(be_even)
  end

  it 'expects that all numbers in an array will be greater or equal to zero' do
    expect([0, 1, 2]).to all(be >= 0)
  end
end
