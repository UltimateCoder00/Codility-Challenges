require "./lib/Lesson 15 Caterpillar Method/MinAbsSumOfTwo/min_abs_sum_of_two"

describe 'MinAbsSumOfTwo' do

  describe 'Example Tests' do
    it 'Example: [1,4,-3]' do
      expect(min_abs_sum_of_two([1,4,-3])).to eq 1
    end

    it 'Example: [-8,4,5,-10,3]' do
      expect(min_abs_sum_of_two([-8,4,5,-10,3])).to eq 3
    end
  end
end
