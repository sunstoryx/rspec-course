RSpec.describe 'start_with_and_end_with_matchers' do
  describe 'caterpillar' do
    it 'should check for cat part' do
      expect(subject).to start_with('cat')
    end

    it { is_expected.to end_with('pillar') }
  end

  describe %i[a b c d] do
    it 'should start with :a' do
      expect(subject).to start_with(:a)
    end

    it 'should end with :b' do
      expect(subject).to end_with(:d)
    end

    it { is_expected.to start_with(:a) }
    it { is_expected.to start_with(:a, :b, :c) }
    it { is_expected.to end_with(:d) }
    it { is_expected.to end_with(:c, :d) }
  end
end
