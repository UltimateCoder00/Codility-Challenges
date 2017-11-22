require "./lib/Lesson 16 Greedy Algorithms/MaxNonoverlappingSegments/max_nonoverlapping_segments"

describe 'MaxNonoverlappingSegments' do

  describe 'Example Test' do
    it 'Example' do
      expect(max_nonoverlapping_segments([1,3,7,9,9], [5,6,8,9,10])).to eq 3
    end
  end
end
