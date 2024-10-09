RSpec.describe 'contain_exactly_matcher' do
  subject { [1, 2, 3] }

  describe 'longer version of the matcher' do
    it 'should contain 1, 2, 3 values' do
      expect(subject).to contain_exactly(1, 2, 3)
    end
  end

  it { is_expected.to contain_exactly(1, 2, 3) }
end
