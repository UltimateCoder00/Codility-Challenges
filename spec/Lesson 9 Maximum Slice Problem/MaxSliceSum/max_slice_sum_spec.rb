require "./lib/Lesson 9 Maximum Slice Problem/MaxSliceSum/max_slice_sum"

describe 'MaxSliceSum' do

  describe 'Example Tests' do
    it 'Example: [3,2,-6,4,0] to 5' do
      expect(max_slice_sum([3,2,-6,4,0])).to eq 5
    end
  end
end
