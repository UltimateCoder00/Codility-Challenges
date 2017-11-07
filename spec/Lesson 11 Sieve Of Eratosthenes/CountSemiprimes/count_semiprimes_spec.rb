require "./lib/Lesson 11 Sieve Of Eratosthenes/CountSemiprimes/count_semiprimes"

describe 'CountSemiprimes' do

  describe 'Example Tests' do
    it 'Example: [1,4,16,26,10,20] to [10,4,0]' do
      expect(count_semiprimes([1,4,16,26,10,20])).to eq [10,4,0]
    end
  end
end
