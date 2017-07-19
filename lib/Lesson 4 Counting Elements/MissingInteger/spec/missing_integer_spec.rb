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
        array = Array.new(1000) { rand(-1000..1000) }
        array << -2147483647
        array << 2147483647
        array.shuffle
        expect(missing_integer(array)).to be_a Integer
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

  describe 'Performance Tests' do
    context 'medium' do
      it 'chaotic sequences length=10005 (with minus)' do
        array = Array.new(10005) { rand(-100000..100000) }
        array.shuffle
        expect(missing_integer(array)).to be_a Integer
      end
    end

    context 'large_1' do
      it 'chaotic + sequence 1, 2, ..., 40000 (without minus)' do
        array1 = Array.new(50000) { rand(0..1000000) }
        array2 = [*1..40000]
        array = array1 + array2
        array.shuffle
        expect(missing_integer(array)).to be_a Integer
      end
    end

    context 'large_2' do
      it 'shuffled sequence 1, 2, ..., 100000 (without minus)' do
        array1 = Array.new(50000) { rand(0..1000000) }
        array2 = [*1..100000]
        array = array1 + array2
        array.shuffle
        expect(missing_integer(array)).to be_a Integer
      end
    end

    context 'large_3' do
      it 'chaotic + many -1, 1, 2, 3 (with minus)' do
        array1 = Array.new(100000) { rand(-2147483647..2147483647) }
        array2 = [-1, 1, 2, 3]*rand(1000)
        array = array1 + array2
        array.shuffle
        expect(missing_integer(array)).to be_a Integer
      end
    end
  end
end
