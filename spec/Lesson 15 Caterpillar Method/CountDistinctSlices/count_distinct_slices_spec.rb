require "./lib/Lesson 15 Caterpillar Method/CountDistinctSlices/count_distinct_slices"

describe 'CountDistinctSlices' do

  describe 'Example Test' do
    it 'Example' do
      expect(count_distinct_slices(6,[3,4,5,5,2])).to eq 9
    end
  end

  describe 'Correctness Tests' do
    context 'Single' do
      it 'Simple Element 1' do
        expect(count_distinct_slices(100000,[100000])).to eq 1
      end

      it 'Simple Element 2' do
        expect(count_distinct_slices(100000,[0])).to eq 1
      end

      it 'Simple Element 3' do
        expect(count_distinct_slices(0,[0])).to eq 1
      end
    end
  end
end
