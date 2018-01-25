require "./lib/Lesson 6 Sorting/NumberOfDiscIntersections/number_of_disc_intersections"

describe 'NumberOfDiscIntersections' do
  describe 'Example Tests' do
    it 'Example 1' do
      expect(number_of_disc_intersections([1, 5, 2, 1, 4, 0])).to eq 11
    end

    it 'Example 2' do
      expect(number_of_disc_intersections([1, 10, 100, 1])).to eq 5
    end
  end

  describe 'Correctness Tests' do
    context 'Simple1' do
      it 'Simple' do
        array = [3, 3, 3, 5, 1, 2]
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
  end
end
