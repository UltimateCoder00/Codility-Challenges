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

    context 'Small_primes' do
      it 'Small Primes: ([7, 17, 5, 3], [7, 11, 5, 2]) to 2' do
        expect(common_prime_divisors([7, 17, 5, 3], [7, 11, 5, 2])).to eq 2
      end
    end

    context 'Small_all_pairs' do
      it 'All Pairs 1-10, Length = 100' do
        array1 = [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 3,
                  3, 3, 3, 3, 3, 3, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 5, 5,
                  5, 5, 5, 5, 5, 5, 5, 5, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 7, 7, 7,
                  7, 7, 7, 7, 7, 7, 7, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 9, 9, 9, 9,
                  9, 9, 9, 9, 9, 9, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10]
        array2 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10,
                  1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10,
                  1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10,
                  1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10,
                  1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
        expect(common_prime_divisors(array1, array2)).to eq 18
      end
    end

    context 'Small_random' do
      it 'Small Random Test, Length = 100' do
        array1 = [48, 66, 67, 15, 2, 38, 28, 82, 70, 61, 56, 67, 15, 45, 17, 91,
                  6, 82, 8, 69, 34, 41, 85, 2, 7, 92, 51, 10, 99, 95, 12, 43, 14,
                  32, 63, 17, 70, 6, 18, 82, 41, 42, 60, 48, 39, 4, 73, 97, 98,
                  67, 36, 37, 70, 68, 12, 24, 37, 52, 82, 51, 3, 83, 44, 52, 23,
                  43, 39, 78, 11, 55, 18, 70, 4, 28, 35, 64, 6, 46, 21, 29, 48,
                  96, 49, 96, 17, 93, 37, 19, 75, 92, 1, 27, 78, 35, 25, 1, 5,
                  62, 99, 100]
        array2 = [97, 2, 74, 16, 99, 2, 88, 69, 86, 100, 24, 34, 71, 29, 27, 23,
                  86, 88, 80, 23, 93, 52, 24, 46, 42, 8, 57, 36, 57, 94, 65, 41,
                  87, 100, 50, 95, 2, 15, 18, 94, 70, 72, 29, 50, 89, 10, 12, 5,
                  47, 85, 56, 41, 51, 18, 95, 36, 24, 32, 83, 32, 91, 34, 45, 8,
                  91, 80, 48, 12, 50, 38, 85, 93, 75, 29, 5, 90, 95, 16, 50, 49,
                  98, 5, 7, 85, 57, 47, 78, 60, 70, 26, 9, 1, 34, 65, 38, 35,
                  62, 71, 60, 32]
        expect(common_prime_divisors(array1, array2)).to eq 3
      end
    end
  end

  describe 'Correctness Tests' do
    context 'Large_all_pairs ' do
      it 'All Pairs 1-70, Length = ~5,000' do
        array1 = Array.new(5000) { rand(1..70) }
        array2 = Array.new(5000) { rand(1..70) }
        expect(common_prime_divisors(array1, array2)).to be_a Integer
      end
    end

    context 'Large_random' do
      it 'All Random Tests, Length = ~6,000' do
        array1 = Array.new(6000) { rand(1..2147483647) }
        array2 = Array.new(6000) { rand(1..2147483647) }
        expect(common_prime_divisors(array1, array2)).to be_a Integer
      end
    end

    context 'Many_factors' do
      it 'Factorial Test' do
        array1 = Array.new(6000) { rand(1..2147483647) }
        array2 = Array.new(6000) { rand(1..2147483647) }
        expect(common_prime_divisors(array1, array2)).to be_a Integer
      end
    end

    context 'Many_factors2' do
      it 'Factorial Test' do
        array1 = Array.new(6000) { rand(1..2147483647) }
        array2 = Array.new(6000) { rand(1..2147483647) }
        expect(common_prime_divisors(array1, array2)).to be_a Integer
      end
    end
  end
end
