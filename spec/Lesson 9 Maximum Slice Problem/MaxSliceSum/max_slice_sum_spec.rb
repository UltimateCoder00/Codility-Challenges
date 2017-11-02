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

    context 'Two_elements' do
      it '[-2,-2] to -2' do
        expect(max_slice_sum([-2,-2])).to eq -2
      end

      it '[-2,1] to 1' do
        expect(max_slice_sum([-2,1])).to eq 1
      end

      it '[-2,3] to 3' do
        expect(max_slice_sum([-2,3])).to eq 3
      end

      it '[1,-2] to 1' do
        expect(max_slice_sum([1,-2])).to eq 1
      end

      it '[1,1] to 2' do
        expect(max_slice_sum([1,1])).to eq 2
      end

      it '[1,3] to 4' do
        expect(max_slice_sum([1,3])).to eq 4
      end

      it '[3,-2] to 3' do
        expect(max_slice_sum([3,-2])).to eq 3
      end

      it '[3,1] to 4' do
        expect(max_slice_sum([3,1])).to eq 4
      end

      it '[3,3] to 6' do
        expect(max_slice_sum([3,3])).to eq 6
      end
    end

    context 'Simple' do
      it '[1, 3, -5, 3, 7, 14, 29] to 53' do
        expect(max_slice_sum([1, 3, -5, 3, 7, 14, 29])).to eq 53
      end
    end
  end
end
