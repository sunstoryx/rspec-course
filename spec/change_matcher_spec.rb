RSpec.describe 'change matcher' do
  subject { [1, 2, 3, 4] }

  it 'should increase subject length by one (basic)' do
    expect { subject.push(5) }.to change { subject.length }.from(4).to(5)
  end

  it 'should decrease subject length by one (basic)' do
    expect { subject.pop }.to change { subject.length }.from(4).to(3)
  end

  it 'should increase subject length by one (advanced)' do
    expect { subject.push(5) }.to change { subject.length }.by(1)
  end

  it 'should decrease subject length by one (advanced)' do
    expect { subject.pop }.to change { subject.length }.by(-1)
  end
end
