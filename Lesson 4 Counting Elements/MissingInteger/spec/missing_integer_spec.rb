require 'missing_integer'

describe 'Missing Integer' do
  describe 'Example Tests' do
    it 'example (without minus) - [1, 3, 6, 4, 1, 2] to 5' do
      expect(missing_integer([1, 3, 6, 4, 1, 2])).to eq 5
    end
  end

  describe 'Correctness Tests' do
    context 'extreme_single' do
      it 'a single element' do
        expect(missing_integer([0])).to eq 1
        expect(missing_integer([-1])).to eq 1
        expect(missing_integer([1])).to eq 2
        expect(missing_integer([-2147483647])).to eq 1
        expect(missing_integer([2147483647])).to eq 1
      end
    end

    context 'simple' do
      it 'simple test' do
        array = [2]
        expect(missing_integer(array)).to eq 1

        array = [1, 1, 3]
        expect(missing_integer(array)).to eq 2

        array = [3, 4, 2, 7]
        expect(missing_integer(array)).to eq 1

        array = [3, 1, 2, 5, 6]
        expect(missing_integer(array)).to eq 4
      end
    end

    context 'extreme_min_max_int' do
      it 'MININT and MAXINT (with minus)' do

      end
    end

    context 'positive_only' do
      it 'shuffled sequence of 0...100 and then 102...200' do
        array = [*0..100, *102..200]
        array.shuffle
        expect(missing_integer(array)).to eq 101
      end
    end

    context 'negative_only' do
      it 'shuffled sequence -100 ... -1' do
        array = [*-100..-1]
        array.shuffle
        expect(missing_integer(array)).to eq 1
      end
    end
  end
end
