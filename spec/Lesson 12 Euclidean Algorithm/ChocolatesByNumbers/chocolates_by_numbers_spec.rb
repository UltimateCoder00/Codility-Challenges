require "./lib/Lesson 12 Euclidean Algorithm/ChocolatesByNumbers/chocolates_by_numbers"

describe 'ChocolatesByNumbers' do

  describe 'Example Tests' do
    it 'Example: (10, 4) to 5' do
      expect(chocolates_by_numbers(10, 4)).to eq 5
    end
  end

  describe 'Correctness Tests' do
    context 'Extreme_small' do
      it 'Very Small N And M: (1, 1) to 1' do
        expect(chocolates_by_numbers(1, 1)).to eq 1
      end

      it 'Very Small N And M: (2, 1) to 2' do
        expect(chocolates_by_numbers(2, 1)).to eq 2
      end

      it 'Very Small N And M: (1, 1) to 1' do
        expect(chocolates_by_numbers(1, 2)).to eq 1
      end
    end
  end
end
