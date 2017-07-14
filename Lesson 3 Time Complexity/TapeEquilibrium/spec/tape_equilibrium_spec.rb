require 'tape_equilibrium'

describe 'Tape Equilibrium' do
  describe 'Example Tests' do
    it 'example: [3, 1, 2, 4, 3] to 1' do
      expect(tape_equilibrium([3, 1, 2, 4, 3])).to eq 1
    end
  end
end
