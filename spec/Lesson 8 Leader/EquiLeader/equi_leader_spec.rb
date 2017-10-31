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

    context 'Double' do
      it 'Double Element: [0,0] to 1' do
        expect(equi_leader([0,0])).to eq 1
      end

      it 'Double Element: [1,2] to 0' do
        expect(equi_leader([1,2])).to eq 0
      end

      it 'Double Element: [-1000000000,-1000000000] to 1' do
        expect(equi_leader([-1000000000,-1000000000])).to eq 1
      end
    end

    context 'Simple' do
      it 'Simple Test: [4, 4, 2, 5, 3, 4, 4, 4] to 3' do
        expect(equi_leader([4, 4, 2, 5, 3, 4, 4, 4])).to eq 3
      end

      it 'Simple Test: [1, 2, 3, 4, 5] to 0' do
        expect(equi_leader([1, 2, 3, 4, 5])).to eq 0
      end
    end
  end
end
