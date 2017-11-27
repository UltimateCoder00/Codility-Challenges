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

    context 'Simple' do
      it 'Simples Tests' do
        expect(count_non_divisible([6,7,2,1,4,7,4,4,1,8,10,15])).to eq [8,8,9,10,6,8,6,6,10,5,8,9]
      end
    end

    context 'Primes' do
      it 'Prime Numbers' do
        expect(count_non_divisible([2,2,2,2,2,2,3,5,7,11,13,17,19,23,29])).to eq [9,9,9,9,9,9,14,14,14,14,14,14,14,14,14]
      end
    end
  end
end
