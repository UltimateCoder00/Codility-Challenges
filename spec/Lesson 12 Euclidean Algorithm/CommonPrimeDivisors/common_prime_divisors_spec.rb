require "./lib/Lesson 12 Euclidean Algorithm/CommonPrimeDivisors/common_prime_divisors"

describe 'CommonPrimeDivisors' do

  describe 'Example Tests' do
    it 'Example: ([15,10,3], [75,30,5]) to 1' do
      expect(common_prime_divisors([15,10,3], [75,30,5])).to eq 1
    end
  end

  describe 'Correctness Tests' do
    context 'Extreme' do
      it 'Extreme Test With Small Values: ([1], [1]) to 1' do
        expect(common_prime_divisors([1], [1])).to eq 1
      end

      it 'Extreme Test With Small Values: ([2, 1, 2], [1, 2, 2]) to 1' do
        expect(common_prime_divisors([2, 1, 2], [1, 2, 2])).to eq 1
      end
    end

    context 'Simple_1' do
      it 'Test With Small Values: ([3, 9, 20, 11], [9, 81, 5, 13]) to 2' do
        expect(common_prime_divisors([3, 9, 20, 11], [9, 81, 5, 13])).to eq 2
      end
    end

    context 'Simple_2' do
      it 'Test With Small Values: ([6059, 551], [442307, 303601]) to 2' do
        expect(common_prime_divisors([6059, 551], [442307, 303601])).to eq 2
      end
    end

    context 'Primes' do
      it 'Powers Of Primes: ([121, 8, 25, 81, 49], [11, 4, 125, 11, 7]) to 4' do
        expect(common_prime_divisors([121, 8, 25, 81, 49], [11, 4, 125, 11, 7])).to eq 4
      end
    end
  end
end
