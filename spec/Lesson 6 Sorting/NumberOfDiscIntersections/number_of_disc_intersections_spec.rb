require "./lib/Lesson 6 Sorting/NumberOfDiscIntersections/number_of_disc_intersections"

describe 'NumberOfDiscIntersections' do
  describe 'Example Tests' do
    it 'Example 1' do
      array = [1,5,2,1,4,0]
      expect(number_of_disc_intersections(array)).to eq 11
    end

    it 'Example 2' do
      array = [1,10,100,1]
      expect(number_of_disc_intersections(array)).to eq 5
    end
  end

  describe 'Correctness Tests' do
    context 'Simple1' do
      it 'Simple' do
        array = [3,3,3,5,1,2]
        expect(number_of_disc_intersections(array)).to eq 15
      end
    end

    context 'Simple2' do
      it 'Simple2 1' do
        array = [1,10,100,1]
        expect(number_of_disc_intersections(array)).to eq 5
      end

      it 'Simple2 2' do
        array = [1,1,1]
        expect(number_of_disc_intersections(array)).to eq 3
      end
    end

    context 'Simple3' do
      it 'Simple' do
        array = [1,0,1,0,1]
        expect(number_of_disc_intersections(array)).to eq 6
      end
    end

    context 'Extreme_small' do
      it 'Empty' do
        array = []
        expect(number_of_disc_intersections(array)).to eq 0
      end

      it '[10]' do
        array = [10]
        expect(number_of_disc_intersections(array)).to eq 0
      end
    end

    context 'Small1' do
      it 'Small' do
        array = [1,5,8,7,8,4,8,5,0,5]
        expect(number_of_disc_intersections(array)).to eq 41
      end
    end

    context 'Small2' do
      it 'Small' do
        array = [12,4,20,19,9,13,4,4,6,14,4,20,1,4,1,16,7,9,6,13]
        expect(number_of_disc_intersections(array)).to eq 176
      end
    end

    context 'Small3' do
      it 'Small' do
        array = [7, 31, 8, 36, 30, 19, 31, 28, 2, 27, 31, 26, 44, 37, 19, 11, 6,
                  41, 35, 31, 22, 25, 11, 27, 7, 31, 32, 34, 12, 4, 16, 35, 26,
                  38, 21, 20, 46, 8, 10, 30, 32, 22, 28, 22, 34, 45, 42, 32, 23,
                  48]
        expect(number_of_disc_intersections(array)).to eq 1169
      end
    end

    context 'Overflow' do
      it 'Arithmetic Overflow Tests 1' do
        array = [1,2147483647,0]
        expect(number_of_disc_intersections(array)).to eq 2
      end

      it 'Arithmetic Overflow Tests 2' do
        array = [2147483647,2147483647]
        expect(number_of_disc_intersections(array)).to eq 1
      end
    end
  end

  describe 'Performance Tests' do
    context 'Medium1' do
      it 'Medium' do
        array = Array.new(1000) { rand(0..999) }
        expect(number_of_disc_intersections(array)).to be_a Integer
      end
    end

    context 'Medium2' do
      it 'Medium' do
        array = Array.new(2000) { rand(0..2000) }
        expect(number_of_disc_intersections(array)).to be_a Integer
      end
    end

    context 'Medium3' do
      it 'Medium' do
        array = Array.new(5000) { rand(0..500) }
        expect(number_of_disc_intersections(array)).to be_a Integer
      end
    end

    context 'Medium4' do
      it 'Medium' do
        array = Array.new(10000) { rand(0..1000) }
        expect(number_of_disc_intersections(array)).to be_a Integer
      end
    end

    context '10M_intersections' do
      it '10.000.000 Intersections' do
        array = Array.new(9499) { rand(0..10000000) }
        expect(number_of_disc_intersections(array)).to be_a Integer
      end
    end

    context 'Big1' do
      it 'Big1 1' do
        array = Array.new(40000) { rand(0..500) }
        expect(number_of_disc_intersections(array)).to be_a Integer
      end

      it 'Big1 2' do
        array = [1,1,1]
        expect(number_of_disc_intersections(array)).to be_a Integer
      end
    end

    context 'Big2' do
      it 'Big2 1' do
        array = Array.new(50000) { rand(0..1000) }
        expect(number_of_disc_intersections(array)).to be_a Integer
      end

      it 'Big2 2' do
        array = [1,1,1]
        expect(number_of_disc_intersections(array)).to be_a Integer
      end
    end
  end
end
