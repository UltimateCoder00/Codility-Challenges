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
  end
end
