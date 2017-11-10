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
  end
end
