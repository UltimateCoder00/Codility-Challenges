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

  context 'Small_random' do
    it 'Random Values, N <= 50 1' do
      array = [4, 7, 4, 10, 6, 4, 11, 10, 11, 8, 3, 5, 3, 10, 1, 10, 3, 4, 8, 9,
                7, 7, 8, 8, 2, 4, 1, 7, 4, 3, 4, 12, 2, 11, 11, 3, 10, 3, 8, 2,
                4, 6, 5, 10, 8, 1, 7, 2, 3, 5]
      expect(rectangle_builder_greater_area(array, 1)).to eq 52
    end

    it 'Random Values, N <= 50 2' do
      array = [4, 7, 4, 10, 6, 4, 11, 10, 11, 8, 3, 5, 3, 10, 1, 10, 3, 4, 8, 9,
                7, 7, 8, 8, 2, 4, 1, 7, 4, 3, 4, 12, 2, 11, 11, 3, 10, 3, 8, 2,
                4, 6, 5, 10, 8, 1, 7, 2, 3, 5]
      expect(rectangle_builder_greater_area(array, 25)).to eq 25
    end

    it 'Random Values, N <= 50 3' do
      array = [4, 7, 4, 10, 6, 4, 11, 10, 11, 8, 3, 5, 3, 10, 1, 10, 3, 4, 8, 9,
                7, 7, 8, 8, 2, 4, 1, 7, 4, 3, 4, 12, 2, 11, 11, 3, 10, 3, 8, 2,
                4, 6, 5, 10, 8, 1, 7, 2, 3, 5]
      expect(rectangle_builder_greater_area(array, 144)).to eq 0
    end
  end

  context 'Geometric_sequence' do
    it 'Powers Of 2, N <= 100 1' do
      array = [1, 2, 4, 8, 16, 32, 64, 128, 256, 512, 1024, 2048, 4096, 8192,
                16384, 32768, 65536, 131072, 262144, 524288, 1048576, 2097152,
                4194304, 8388608, 16777216, 33554432, 67108864, 134217728,
                268435456, 536870912, 1, 2, 4, 8, 16, 32, 64, 128, 256, 512,
                1024, 2048, 4096, 8192, 16384, 32768, 65536, 131072, 262144,
                524288, 1048576, 2097152, 4194304, 8388608, 16777216, 33554432,
                67108864, 134217728, 268435456, 536870912]
      expect(rectangle_builder_greater_area(array, 536870912)).to eq 225
    end

    it 'Powers Of 2, N <= 100 2' do
      array = [1, 2, 4, 8, 16, 32, 64, 128, 256, 512, 1024, 2048, 1, 2, 4, 8,
                16, 32, 64, 128, 256, 512, 1024, 2048, 1, 2, 4, 8, 16, 32, 64,
                128, 256, 512, 1024, 2048, 1, 2, 4, 8, 16, 32, 64, 128, 256,
                512, 1024, 2048, 1, 2, 4, 8, 16, 32, 64, 128, 256, 512, 1024, 2048]
      expect(rectangle_builder_greater_area(array, 2048)).to eq 42
    end
  end

  describe 'Performance Tests' do
    context 'Medium_random' do
      it 'Random Values, N <= 20,000 1' do
        x = 1
        array = Array.new(20000) { rand(1..5000) }
        expect(rectangle_builder_greater_area(array, x)).to be_a Integer
      end

      it 'Random Values, N <= 20,000 2' do
        x = 6200100
        array = Array.new(20000) { rand(1..5000) }
        expect(rectangle_builder_greater_area(array, x)).to be_a Integer
      end

      it 'Random Values, N <= 20,000 3' do
        x = 25000000
        array = Array.new(20000) { rand(1..5000) }
        expect(rectangle_builder_greater_area(array, x)).to be_a Integer
      end
    end
  end
end
