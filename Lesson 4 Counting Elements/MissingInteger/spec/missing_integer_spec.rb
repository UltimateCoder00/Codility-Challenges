require 'missing_integer'

describe 'Missing Integer' do
  describe 'Example Tests' do
    it 'example (without minus) - [1, 3, 6, 4, 1, 2] to 5' do
      expect(missing_integer([1, 3, 6, 4, 1, 2])).to eq 5
    end
  end

  describe 'Example Tests' do
    context 'positive_only' do
      it 'shuffled sequence of 0...100 and then 102...200' do
        array = [*0..100, *102..200]
        array.shuffle
        expect(missing_integer(array)).to eq 101
      end
    end
  end
end
