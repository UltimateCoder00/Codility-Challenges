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

  describe 'Performance Tests' do
    context 'Small_random1' do
      it 'Random, Numbers Form -10**4 To 10**4, Length = 70' do
        array = Array.new(70) { rand(-10000..10000) }
        expect(max_double_slice_sum(array)).to be_a Integer
      end
    end

    context 'Small_random2' do
      it 'Random, Numbers Form -30 To 30, Length = 300' do
        array = Array.new(300) { rand(-30..30) }
        expect(max_double_slice_sum(array)).to be_a Integer
      end
    end

    context 'Medium_range' do
      it '-1000,...,1000' do
        array = Array.new(2001) { rand(-1000..1000) }
        expect(max_double_slice_sum(array)).to be_a Integer
      end
    end

    context 'Large_ones' do
      it 'Random Numbers From -1 To 1, Length = ~100,000' do
        array = Array.new(100000) { rand(-1..1) }
        expect(max_double_slice_sum(array)).to be_a Integer
      end
    end

    context 'Large_random' do
      it 'Random, Length = ~100,000' do
        array = Array.new(99999) { rand(-10000..9999) }
        expect(max_double_slice_sum(array)).to be_a Integer
      end
    end

    context 'Extreme_maximal' do
      it 'All Maximal Values, Length = ~100,000' do
        array = [10000]*100000
        expect(max_double_slice_sum(array)).to be_a Integer
      end
    end
  end
end
