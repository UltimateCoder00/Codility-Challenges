require "./lib/Lesson 15 Caterpillar Method/MinAbsSumOfTwo/min_abs_sum_of_two"

describe 'MinAbsSumOfTwo' do

  describe 'Example Tests' do
    it 'Example 1' do
      expect(min_abs_sum_of_two([1,4,-3])).to eq 1
    end

    it 'Example 2' do
      expect(min_abs_sum_of_two([-8,4,5,-10,3])).to eq 3
    end
  end

  describe 'Correctness Tests' do
    context 'Extreme_single' do
      it 'Sequences Of 1 Elements 1' do
        expect(min_abs_sum_of_two([-1000000000])).to eq 2000000000
      end

      it 'Sequences Of 1 Elements 2' do
        expect(min_abs_sum_of_two([0])).to eq 0
      end

      it 'Sequences Of 1 Elements 3' do
        expect(min_abs_sum_of_two([1000000000])).to eq 2000000000
      end
    end

    context 'Extreme_double' do
      it 'Sequences Of 2 Elements 1' do
        expect(min_abs_sum_of_two([-1000000000, 1000000000])).to eq 0
      end

      it 'Sequences Of 2 Elements 2' do
        expect(min_abs_sum_of_two([-1000000000, -999999999])).to eq 1999999998
      end

      it 'Sequences Of 2 Elements 3' do
        expect(min_abs_sum_of_two([-98, 99])).to eq 1
      end
    end

    context 'Positive_small' do
      it 'Only Positive Numbers' do
        expect(min_abs_sum_of_two([8, 5, 3, 4, 6, 8])).to eq 6
      end
    end

    context 'Negative_small' do
      it 'Only Negative Numbers' do
        expect(min_abs_sum_of_two([-8, -5, -4, -10, -12, -18])).to eq 8
      end
    end
  end

  describe 'Performance Tests' do
    context 'Random_small' do
      it 'Random Sequence, Length = ~1000' do
        array = Array.new(1000) { rand(-1000000000..1000000000) }
        expect(min_abs_sum_of_two(array)).to be_a Integer
      end
    end
  end
end
