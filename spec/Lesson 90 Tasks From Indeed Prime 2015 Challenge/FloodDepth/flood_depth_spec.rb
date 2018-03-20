require "./lib/Lesson 90 Tasks From Indeed Prime 2015 Challenge/FloodDepth/flood_depth"

describe 'FloodDepth' do

  describe 'Example Tests' do
    it 'Example 1' do
      expect(flood_depth([1,3,2,1,2,1,5,3,3,4,2])).to eq 2
    end

    it 'Example 2' do
      expect(flood_depth([5,8])).to eq 0
    end
  end
end
