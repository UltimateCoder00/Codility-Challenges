require "./lib/Lesson 8 Leader/EquiLeader/equi_leader"

describe 'EquiLeader' do

  describe 'Example Tests' do
    it 'Example: [4,3,4,4,4,2] to 2' do
      expect(equi_leader([4,3,4,4,4,2])).to eq 2
    end
  end

  describe 'Correctness Tests' do
    context 'Single' do
      it 'Single Element: [1000000000] to 0' do
        expect(equi_leader([1000000000])).to eq 0
      end

      it 'Single Element: [-1000000000] to 0' do
        expect(equi_leader([-1000000000])).to eq 0
      end

      it 'Single Element: [0] to 0' do
        expect(equi_leader([0])).to eq 0
      end
    end
  end
end
