require "./lib/Lesson 15 Caterpillar Method/CountDistinctSlices/count_distinct_slices"

describe 'CountDistinctSlices' do

  describe 'Example Tests' do
    it 'Example: (6, [3,4,5,5,2]) to 9' do
      expect(count_distinct_slices(6,[3,4,5,5,2])).to eq 9
    end
  end
end
