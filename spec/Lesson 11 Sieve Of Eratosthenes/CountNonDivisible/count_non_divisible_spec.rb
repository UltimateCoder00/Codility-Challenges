require "./lib/Lesson 11 Sieve Of Eratosthenes/CountNonDivisible/count_non_divisible"

describe 'CountNonDivisible' do

  describe 'Example Test' do
    it 'Example' do
      expect(count_non_divisible([3,1,2,3,6])).to eq [2,4,3,2,0]
    end
  end
end
