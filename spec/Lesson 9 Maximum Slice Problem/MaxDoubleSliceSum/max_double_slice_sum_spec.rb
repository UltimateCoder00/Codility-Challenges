require "./lib/Lesson 9 Maximum Slice Problem/MaxDoubleSliceSum/max_double_slice_sum"

describe 'MaxDoubleSliceSum' do

  describe 'Example Test' do
    it 'Example' do
      expect(max_double_slice_sum([3,2,6,-1,4,5,-1,2])).to eq 17
    end
  end

  describe 'Correctness Tests' do
    context 'Simple1' do
      it 'First Simple Test 1' do
        expect(max_double_slice_sum([0,10,-5,-2,0])).to eq 10
      end

      it 'First Simple Test 2' do
        expect(max_double_slice_sum([-2,-3,-4,1,-5,-6,-7])).to eq 1
      end

      it 'First Simple Test 3' do
        expect(max_double_slice_sum([5,17,0,3])).to eq 17
      end
    end

    context 'Simple2' do
      it 'Second Simple Test 1' do
        expect(max_double_slice_sum([5,0,1,0,5])).to eq 1
      end

      it 'Second Simple Test 2' do
        expect(max_double_slice_sum([-8,10,20,-5,-7,-4])).to eq 30
      end
    end

    context 'Simple3' do
      it 'Third Simple Test' do
        expect(max_double_slice_sum([1,3,4,2,-3,4,-10,1,1,4,-2,4,1])).to eq 18
      end
    end

    context 'Negative' do
      it 'All Negative Numbers' do
        expect(max_double_slice_sum([-4,-5,-1,-5,-7,-19,-11])).to eq 0
      end
    end

    context 'Positive' do
      it 'All Positive Numbers' do
        expect(max_double_slice_sum([6,1,5,6,4,2,9,4])).to eq 26
      end
    end

    context 'Extreme_triplet' do
      it 'Three Elements' do
        expect(max_double_slice_sum([5,5,5])).to eq 0
      end
    end
  end
end
