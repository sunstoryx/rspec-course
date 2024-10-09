RSpec.describe Array do
  subject(:sally) do
    %w[a b]
  end

  it 'should have one element inside' do
    expect(subject.length).to eq(2)
    subject.pop
    expect(subject.length).to eq(1)
  end

  it 'should have two elements inside' do
    expect(sally).to eq(subject)
  end
end
