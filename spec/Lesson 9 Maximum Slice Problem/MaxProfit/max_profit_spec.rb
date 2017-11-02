require "./lib/Lesson 9 Maximum Slice Problem/MaxProfit/max_profit"

describe 'MaxProfit' do

  describe 'Example Tests' do
    it 'Example: [23171,21011,21123,21366,21013,21367] to 356' do
      expect(max_profit([23171,21011,21123,21366,21013,21367])).to eq 356
    end
  end

  describe 'Correctness Tests' do
    context 'Simple_1' do
      it 'V-pattern Sequence, Length=7' do
        expect(max_profit([4, 3, 2, 1, 2, 3, 4])).to eq 3
      end
    end

    context 'Simple_desc' do
      it 'Descending Sequence, Length=5' do
        expect(max_profit([5, 4, 3, 2, 1])).to eq 0
      end

      it 'Ascending Sequence, Length=5' do
        expect(max_profit([1, 2, 3, 4, 5])).to eq 4
      end
    end

    context 'Simple_empty' do
      it 'Empty Sequence' do
        expect(max_profit([0])).to eq 0
      end

      it '[0, 200000] Sequence' do
        expect(max_profit([0, 200000])).to eq 200000
      end
    end
  end
end
