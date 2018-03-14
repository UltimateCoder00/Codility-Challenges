require "./lib/Lesson 14 Binary Search Algorithm/NailingPlanks/nailing_planks"

describe 'NailingPlanks' do

  describe 'Example Test' do
    it 'Example' do
      a = [1,4,5,8]
      b = [4,5,9,10]
      c = [4,6,7,10,2]
      expect(nailing_planks(a, b, c)).to eq 4
    end
  end
end
