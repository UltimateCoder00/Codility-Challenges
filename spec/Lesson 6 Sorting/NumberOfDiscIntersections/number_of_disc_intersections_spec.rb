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
  end
end
