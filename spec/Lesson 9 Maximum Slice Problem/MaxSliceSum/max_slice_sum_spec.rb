require "./lib/Lesson 9 Maximum Slice Problem/MaxSliceSum/max_slice_sum"

describe 'MaxSliceSum' do

  describe 'Example Tests' do
    it 'Example: [3,2,-6,4,0] to 5' do
      expect(max_slice_sum([3,2,-6,4,0])).to eq 5
    end
  end

  describe 'Correctness Tests' do
    context 'One_element' do
      it '[-10] to -10' do
        expect(max_slice_sum([-10])).to eq -10
      end

      it '[0] to 0' do
        expect(max_slice_sum([0])).to eq 0
      end

      it '[10] to 10' do
        expect(max_slice_sum([10])).to eq 10
      end
    end
  end
end
