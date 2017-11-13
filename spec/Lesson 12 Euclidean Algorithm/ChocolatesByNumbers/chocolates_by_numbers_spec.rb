require "./lib/Lesson 12 Euclidean Algorithm/ChocolatesByNumbers/chocolates_by_numbers"

describe 'ChocolatesByNumbers' do

  describe 'Example Tests' do
    it 'Example: (10, 4) to 5' do
      expect(chocolates_by_numbers(10, 4)).to eq 5
    end
  end

  describe 'Correctness Tests' do
    context 'Extreme_small' do
      it 'Very Small N=1 And M=1 to 1' do
        expect(chocolates_by_numbers(1, 1)).to eq 1
      end

      it 'Very Small N=2 And M=1 to 2' do
        expect(chocolates_by_numbers(2, 1)).to eq 2
      end

      it 'Very Small N=1 And M=2 to 1' do
        expect(chocolates_by_numbers(1, 2)).to eq 1
      end
    end

    context 'Simple' do
      it 'N=24 And M=18 to 4' do
        expect(chocolates_by_numbers(24, 18)).to eq 4
      end
    end

    context 'Small1' do
      it 'N=15 And M=3 to 5' do
        expect(chocolates_by_numbers(15, 3)).to eq 5
      end

      it 'N=18 And M=4 to 9' do
        expect(chocolates_by_numbers(18, 4)).to eq 9
      end

      it 'N=12 And M=21 to 4' do
        expect(chocolates_by_numbers(12, 21)).to eq 4
      end

      it 'N=27 And M=16 to 27' do
        expect(chocolates_by_numbers(27, 16)).to eq 27
      end
    end

    context 'Small2' do
      it 'N=30 And M=12 to 5' do
        expect(chocolates_by_numbers(30, 12)).to eq 5
      end

      it 'N=123 And M=321 to 41' do
        expect(chocolates_by_numbers(123, 321)).to eq 41
      end
    end
  end
end
