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

    context 'Double' do
      it 'Two Elements 1' do
        expect(tie_ropes(1000000000, [1000000000, 1000000000])).to eq 2
      end

      it 'Two Elements 2' do
        expect(tie_ropes(1000000000, [1000000000, 999999999])).to eq 1
      end

      it 'Two Elements 3' do
        expect(tie_ropes(2, [1,2])).to eq 1
      end

      it 'Two Elements 4' do
        expect(tie_ropes(2, [2,1])).to eq 1
      end

      it 'Two Elements 5' do
        expect(tie_ropes(3, [1,1])).to eq 0
      end
    end

    context 'Small_functional' do
      it 'Small Functional Tests 1' do
        expect(tie_ropes(5, [1,2,1,5,2,3,1,1,1,1])).to eq 2
      end

      it 'Small Functional Tests 2' do
        expect(tie_ropes(10, [3,3,2,1,2,1,1,1,8,12])).to eq 3
      end
    end
  end
end
