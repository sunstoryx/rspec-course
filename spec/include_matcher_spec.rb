RSpec.describe 'include_matcher' do
  describe 'hot chocolate' do
    it 'should check for hot part in the string' do
      expect(subject).to include('hot')
      expect(subject).to include('choc')
      expect(subject).to include('late')
    end

    it { is_expected.to include('choc') }
  end

  describe [10, 20, 30] do
    it 'checks inclusion of the array regardless of order' do
      expect(subject).to include(10)
      expect(subject).to include(10, 20)
      expect(subject).to include(30, 20)
    end

    it { is_expected.to include(10) }
  end

  describe({ a: 2, b: 4 }) do
    it 'can check for the existence of the key' do
      expect(subject).to include(:a, :b)
      expect(subject).to include(:b)
    end

    it { is_expected.to include(a: 2) }
  end
end
