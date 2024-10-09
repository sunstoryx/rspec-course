class ProfessionalWrestler
  attr_reader :name, :finishing_move

  def initialize(name, finishing_move)
    @name = name
    @finishing_move = finishing_move
  end
end

RSpec.describe 'have_attributes_matcher' do
  describe ProfessionalWrestler.new('John Cena', 'Farting') do
    it 'should check for the attributes and it\'s value' do
      expect(subject).to have_attributes(name: 'John Cena', finishing_move: 'Farting')
    end

    it { is_expected.to have_attributes(name: 'John Cena', finishing_move: 'Farting') }
  end
end
