require "./lib/Lesson 11 Sieve Of Eratosthenes/CountNonDivisible/count_non_divisible"

describe 'CountNonDivisible' do

  describe 'Example Test' do
    it 'Example' do
      expect(count_non_divisible([3,1,2,3,6])).to eq [2,4,3,2,0]
    end
  end

  describe 'Correctness Test' do
    context 'Extreme_simple' do
      it 'Extreme Simple 1' do
        expect(count_non_divisible([2])).to eq [0]
      end

      it 'Extreme Simple 2' do
        expect(count_non_divisible([1]*9)).to eq [0]*9
      end
    end

    context 'Double' do
      it 'Two Elements 1' do
        expect(count_non_divisible([3,4])).to eq [1,1]
      end

      it 'Two Elements 2' do
        expect(count_non_divisible([4,4])).to eq [0,0]
      end

      it 'Two Elements 3' do
        expect(count_non_divisible([2,4])).to eq [1,0]
      end
    end
  end
end
