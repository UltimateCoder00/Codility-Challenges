require 'number_of_disc_intersections'

describe 'Number Of Disc Intersections' do
  describe 'Example Tests' do
    it 'example: [1, 5, 2, 1, 4, 0] gives 11' do
      expect(number_of_disc_intersections([1, 5, 2, 1, 4, 0])).to eq 11
    end
  end
end
