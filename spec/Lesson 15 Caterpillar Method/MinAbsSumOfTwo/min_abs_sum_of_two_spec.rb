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
  end
end
