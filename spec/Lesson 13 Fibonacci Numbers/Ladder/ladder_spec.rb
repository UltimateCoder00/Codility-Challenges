require "./lib/Lesson 13 Fibonacci Numbers/Ladder/ladder"

describe 'Ladder' do

  describe 'Example Tests' do
    it 'Example ' do
      expect(ladder([4,4,5,5,1], [3,2,4,3,1])).to eq [5,1,8,0,1]
    end
  end
end
