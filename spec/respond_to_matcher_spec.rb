class SedanCar
  def horn
    'Beep!'
  end

  def type
    'Sedan'
  end

  def passengers(size)
    return unless size.is_a?(Integer)
    "There gonna be #{size} passengers with us!"
  end
end

RSpec.describe SedanCar do
  it 'confirms that an object can respond to the described methods' do
    expect(subject).to respond_to(:horn, :type)
    expect(subject).to respond_to(:passengers).with(1).argument
  end

  it { is_expected.to respond_to(:horn, :type) }
  it { is_expected.to respond_to(:passengers).with(1).argument }
end
