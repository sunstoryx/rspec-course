RSpec.describe 'all matchers spec' do
  it 'should validate the values' do
    expect([5, 7, 9]).to all(be_odd)
    expect([[], [], []]).to all(be_empty)
    expect([1, 2, 3]).to all(be < 10)
  end

  describe [5, 7, 9] do
    it { is_expected.to all(be_odd) }
    it { is_expected.to all(be < 10) }
  end
end
