require "./lib/Lesson 12 Euclidean Algorithm/CommonPrimeDivisors/common_prime_divisors"

describe 'CommonPrimeDivisors' do

  describe 'Example Tests' do
    it 'Example: ([15,10,3], [75,30,5]) to 1' do
      expect(common_prime_divisors([15,10,3], [75,30,5])).to eq 1
    end
  end

  describe 'Correctness Tests' do
    context 'Extreme Test With Small Values' do
      it '([1], [1]) to 1' do
        expect(common_prime_divisors([1], [1])).to eq 1
      end

      it '([2, 1, 2], [1, 2, 2]) to 1' do
        expect(common_prime_divisors([2, 1, 2], [1, 2, 2])).to eq 1
      end
    end
  end
end
