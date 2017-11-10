require "./lib/Lesson 11 Sieve Of Eratosthenes/CountSemiprimes/count_semiprimes"

describe 'CountSemiprimes' do

  describe 'Example Tests' do
    it 'Example: (26, [1,4,16], [26,10,20]) to [10,4,0]' do
      expect(count_semiprimes(26, [1,4,16], [26,10,20])).to eq [10,4,0]
    end
  end

  describe 'Correctness Tests' do
    context 'Extreme_one' do
      it 'Small N = 1' do
        n = 1
        a = [1]
        b = [2]
        expect(count_semiprimes(n, a, b)).to eq [0]
      end
    end

    context 'Extreme_one' do
      it 'Small N = 4' do
        n = 4
        a = [1, 2, 3, 4, 1, 2, 3, 1, 2, 1]
        b = [4, 4, 4, 4, 3, 3, 3, 2, 2, 1]
        expect(count_semiprimes(n, a, b)).to eq [1, 1, 1, 1, 0, 0, 0, 0, 0, 0]
      end
    end

    context 'Small_functional' do
      it 'Small Functional' do
        n = 50
        a = [1, 2, 3, 4, 10]
        b = [50, 49, 48, 40, 30]
        expect(count_semiprimes(n, a, b)).to eq [17, 17, 16, 15, 7]
      end
    end

    context 'Small_random' do
      it 'Small Random, Length = ~40' do
        n = 40
        a = [10, 1, 8, 2, 10, 1, 9, 7, 9, 10, 3, 4, 8, 3, 3, 3, 9, 9, 8,
              3, 10, 6, 3, 5, 5, 1, 6, 4, 6, 10, 7, 5, 9, 10, 5, 10, 1,
              2, 2, 10]
        b = [33, 35, 34, 34, 34, 37, 32, 36, 30, 33, 33, 31, 38, 33, 38,
              40, 32, 39, 38, 37, 30, 35, 36, 33, 32, 33, 32, 38, 33, 34,
              37, 40, 33, 30, 40, 39, 38, 35, 32, 31]
        expect(count_semiprimes(n, a, b)).to eq [8, 13, 10, 12, 9, 13, 8, 11, 8,
                                                  8, 11, 10, 12, 11, 14, 15, 8,
                                                  13, 12, 13, 7, 12, 13, 10, 9,
                                                  11, 9, 14, 10, 9, 11, 14, 9, 7,
                                                  14, 12, 14, 13, 10, 7]
      end
    end
  end
end
