require "./lib/Lesson 90 Tasks From Indeed Prime 2015 Challenge/SlalomSkiing/slalom_skiing"

describe 'SlalomSkiing' do

  describe 'Example Tests' do
    it 'Example 1' do
      expect(slalom_skiing([15,13,5,7,4,10,12,8,2,11,6,9,3])).to eq 8
    end

    it 'Example 2' do
      expect(slalom_skiing([1,5])).to eq 2
    end
  end
end
