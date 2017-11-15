require "./lib/Lesson 6 Sorting/NumberOfDiscIntersections/number_of_disc_intersections"

describe 'NumberOfDiscIntersections' do
  describe 'Example Tests' do
    it 'example: [1, 5, 2, 1, 4, 0] gives 11' do
      expect(number_of_disc_intersections([1, 5, 2, 1, 4, 0])).to eq 11
    end

    it 'example: [1, 10, 100, 1] gives 5' do
      expect(number_of_disc_intersections([1, 10, 100, 1])).to eq 5
    end
  end
end
