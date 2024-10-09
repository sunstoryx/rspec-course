RSpec.describe 'satisfy_matcher' do
  subject { 'racecar' }
  # subject { 'racecars' }

  it 'confirms that the word is palindrome' do
    expect(subject).to satisfy { |word| word.reverse == word }
  end

  it 'confirms that the word is palindrome with proper error message' do
    expect(subject).to satisfy('be a palindrome') { |word| word == word.reverse }
  end
end
