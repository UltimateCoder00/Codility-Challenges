require "./lib/Lesson 91 Tasks From Indeed Prime 2016 Challenge/RectangleBuilderGreaterArea/rectangle_builder_greater_area"

describe 'RectangleBuilderGreaterArea' do

  describe 'Example Test' do
    it 'Example' do
      expect(rectangle_builder_greater_area([1,2,5,1,1,2,3,5,1], 5)).to eq 2
    end
  end

  describe 'Correctness Tests' do
    context 'Extreme' do
      it 'Corner Cases, N <= 5 1' do
        expect(rectangle_builder_greater_area([], 1)).to eq 0
      end

      it 'Corner Cases, N <= 5 2' do
        expect(rectangle_builder_greater_area([1], 1)).to eq 0
      end

      it 'Corner Cases, N <= 5 3' do
        expect(rectangle_builder_greater_area([2,2,2], 4)).to eq 0
      end

      it 'Corner Cases, N <= 5 4' do
        expect(rectangle_builder_greater_area([1000000000,1000000000,1,1], 1000000000)).to eq 1
      end
    end
  end
end
