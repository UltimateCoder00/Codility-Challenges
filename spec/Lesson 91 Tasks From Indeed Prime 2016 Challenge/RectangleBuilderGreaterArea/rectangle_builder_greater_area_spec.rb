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

  context 'Squares' do
    it 'Includes Squares, N <= 20 1' do
      expect(rectangle_builder_greater_area([6,6,6,6,6,6], 10)).to eq 1
    end

    it 'Includes Squares, N <= 20 2' do
      expect(rectangle_builder_greater_area([1,1,4,4,8,8,1,1,4,4,8,8], 15)).to eq 3
    end

    it 'Includes Squares, N <= 20 3' do
      expect(rectangle_builder_greater_area([1,2,3,4,5,1,2,3,4,5,1,2,3,4,5,1,2,3,4,5], 25)).to eq 1
    end
  end

  context 'Simple' do
    it 'Simple Tests, N <= 20 1' do
      expect(rectangle_builder_greater_area([3,8,9,5,8,8,9,3,8,5,10], 20)).to eq 6
    end

    it 'Simple Tests, N <= 20 2' do
      expect(rectangle_builder_greater_area([2,3,2,3,2,3,2,3], 9)).to eq 1
    end
  end

  context 'Fib' do
    it 'Fibonacci numbers, N <= 20 1' do
      expect(rectangle_builder_greater_area([1,1,2,3,5,8,13,21,34,55], 1)).to eq 0
    end

    it 'Fibonacci numbers, N <= 20 2' do
      expect(rectangle_builder_greater_area([1,2,3,5,8,13,21,34,55,1,2,3,5,8,13,21,34,55], 100)).to eq 16
    end

    it 'Fibonacci numbers, N <= 20 3' do
      expect(rectangle_builder_greater_area([1,2,3,5,8,13,21,34,55,1,2,3,5,8,13,21,34,55], 103)).to eq 15
    end
  end

  context 'Small_repetitions' do
    it 'A Few Repeated Values, N <= 50 1' do
      expect(rectangle_builder_greater_area([2,3,5,7,2,3,5,7,2,3,5,7,2,3,5,7,2,3,5,7,2,3,5,7,2,3,5,7,2,3,5,7,2,3,5,7,2,3,5,7], 10)).to eq 7
    end

    it 'A Few Repeated Values, N <= 50 2' do
      expect(rectangle_builder_greater_area([1,3,8,1,3,8,1,3,8,1,3,8,1,3,8,1,3,8,1,3,8,1,3,8,1,3,8,1,3,8,1,3,8,1,3,8,1,3,8,1,3,8,1,3,8], 42)).to eq 1
    end
  end
end
