require "./lib/Lesson 11 Sieve Of Eratosthenes/CountNonDivisible/count_non_divisible"

describe 'CountNonDivisible' do

  describe 'Example Test' do
    it 'Example' do
      expect(count_non_divisible([3,1,2,3,6])).to eq [2,4,3,2,0]
    end
  end

  describe 'Correctness Tests' do
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

    context 'Small_random' do
      it 'Small, Random Numbers, Length = 100 1' do
        array = [95, 132, 134, 29, 3, 75, 55, 163, 139, 121, 112, 133, 30, 89,
                  33, 182, 12, 164, 15, 138, 68, 81, 169, 4, 13, 184, 102, 19,
                  198, 190, 23, 85, 28, 63, 125, 33, 140, 11, 35, 164, 81, 84,
                  120, 96, 77, 7, 146, 194, 196, 133, 72, 73, 139, 135, 23, 47,
                  73, 103, 163, 101, 6, 165, 87, 104, 45, 86, 78, 155, 21, 110,
                  36, 140, 8, 56, 69, 128, 11, 92, 42, 57, 96, 192, 97, 192, 34,
                  185, 73, 38, 150, 183, 2, 54, 155, 69, 49, 2, 9, 124, 197, 200]

        output_array = [98, 89, 97, 99, 99, 97, 97, 98, 98, 97, 92, 96, 94, 99,
                        95, 95, 94, 95, 98, 91, 95, 96, 98, 97, 99, 92, 94, 99,
                        90, 94, 98, 99, 95, 95, 99, 95, 92, 98, 98, 95, 96, 89,
                        90, 91, 96, 99, 94, 96, 93, 96, 90, 97, 98, 95, 98, 99,
                        97, 99, 98, 99, 96, 92, 97, 94, 96, 97, 94, 98, 97, 94,
                        92, 92, 96, 93, 95, 95, 98, 94, 93, 97, 91, 89, 99, 89,
                        97, 99, 97, 96, 92, 98, 98, 94, 98, 95, 98, 98, 98, 96,
                        99, 95]
        expect(count_non_divisible(array)).to eq output_array
      end

      it 'Small, Random Numbers, Length = 100 2' do
        array = [3, 3, 3, 2, 2, 3, 2, 4, 4, 3, 3, 3, 2, 3, 2, 4, 2, 4, 2, 4, 3,
                  3, 4, 2, 2, 4, 3, 2, 4, 4, 2, 3, 2, 2, 3, 2, 4, 2, 2, 4, 3, 3,
                  3, 3, 3, 2, 4, 4, 4, 3, 3, 3, 4, 4, 2, 2, 3, 3, 4, 3, 2, 4, 3,
                  3, 2, 3, 3, 4, 2, 3, 2, 4, 2, 2, 3, 3, 2, 3, 2, 2, 3, 4, 3, 4,
                  2, 4, 3, 2, 4, 4, 2, 2, 4, 3, 2, 2, 2, 3, 4, 4]

        output_array = [63, 63, 63, 65, 65, 63, 65, 37, 37, 63, 63, 63, 65, 63,
                        65, 37, 65, 37, 65, 37, 63, 63, 37, 65, 65, 37, 63, 65,
                        37, 37, 65, 63, 65, 65, 63, 65, 37, 65, 65, 37, 63, 63,
                        63, 63, 63, 65, 37, 37, 37, 63, 63, 63, 37, 37, 65, 65,
                        63, 63, 37, 63, 65, 37, 63, 63, 65, 63, 63, 37, 65, 63,
                        65, 37, 65, 65, 63, 63, 65, 63, 65, 65, 63, 37, 63, 37,
                        65, 37, 63, 65, 37, 37, 65, 65, 37, 63, 65, 65, 65, 63,
                        37, 37]

        expect(count_non_divisible(array)).to eq output_array
      end
    end
  end

  describe 'Performance Tests' do
    context 'Medium_random' do
      it 'Medium, Random Numbers Length = 5,000 1' do
        array = Array.new(5000) { rand(1..10000) }
        expect(count_non_divisible(array)).to be_a Array
      end

      it 'Medium, Random Numbers Length = 5,000 2' do
        array = Array.new(5000) { rand(1..1000) }
        expect(count_non_divisible(array)).to be_a Array
      end
    end

    context 'Large_range' do
      it '1, 2, ..., N, Length = ~20,000 1' do
        array = Array.new(20000) { rand(1..20000) }
        expect(count_non_divisible(array)).to be_a Array
      end

      it '1, 2, ..., N, Length = ~20,000 2' do
        array = Array.new(20000) { rand(1..10000) }
        expect(count_non_divisible(array)).to be_a Array
      end
    end

    context 'Large_random' do
      it 'Large, Random Numbers, Length = ~30,000 1' do
        array = Array.new(30000) { rand(1..60000) }
        expect(count_non_divisible(array)).to be_a Array
      end

      it 'Large, Random Numbers, Length = ~30,000 2' do
        array = Array.new(30000) { rand(59898..59998) }
        expect(count_non_divisible(array)).to be_a Array
      end
    end

    context 'Large_extreme' do
      it 'Large, All The Same Values, Length = 50,000 1' do
        array = [100000]*50000
        expect(count_non_divisible(array)).to be_a Array
      end

      it 'Large, All The Same Values, Length = 50,000 2' do
        array = Array.new(30000) { rand(1..3) }
        expect(count_non_divisible(array)).to be_a Array
      end

      it 'Large, All The Same Values, Length = 50,000 3' do
        array = Array.new(40000) { rand(2..16) }
        expect(count_non_divisible(array)).to be_a Array
      end
    end
  end
end
