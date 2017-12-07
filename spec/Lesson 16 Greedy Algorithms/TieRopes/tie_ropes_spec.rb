require "./lib/Lesson 16 Greedy Algorithms/TieRopes/tie_ropes"

describe 'TieRopes' do

  describe 'Example Test' do
    it 'Example' do
      expect(tie_ropes(4, [1,2,3,4,1,1,3])).to eq 3
    end
  end

  describe 'Correctness Tests' do
    context 'Single' do
      it 'Single Element 1' do
        expect(tie_ropes(1000000000, [1000000000])).to eq 1
      end

      it 'Single Element 2' do
        expect(tie_ropes(1000000000, [999999999])).to eq 0
      end

      it 'Single Element 3' do
        expect(tie_ropes(1, [1])).to eq 1
      end

      it 'Single Element 4' do
        expect(tie_ropes(1, [2])).to eq 1
      end

      it 'Single Element 5' do
        expect(tie_ropes(2, [1])).to eq 0
      end
    end
  end
end
