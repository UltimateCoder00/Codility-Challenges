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
  end
end
