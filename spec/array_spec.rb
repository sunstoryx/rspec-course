RSpec.describe Array do
  it 'should start off empty' do
    expect(subject.length).to eq(0)
    subject.push('')
    expect(subject.length).to eq(1)
  end
end
