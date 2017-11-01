require "./lib/Lesson 9 Maximum Slice Problem/MaxDoubleSliceSum/max_double_slice_sum"

describe 'MaxDoubleSliceSum' do

  describe 'Example Tests' do
    it 'Example: [3,2,6,-1,4,5,-1,2] to 17' do
      expect(max_double_slice_sum([3,2,6,-1,4,5,-1,2])).to eq 17
    end
  end
end
