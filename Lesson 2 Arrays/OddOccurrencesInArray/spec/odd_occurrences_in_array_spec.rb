require 'odd_occurrences_in_array'

describe 'Odd Occurrences In Array' do
  describe 'Example Tests' do
    it 'example: [9, 3, 9, 3, 9, 7, 9] to 7' do
      array = [9, 3, 9, 3, 9, 7, 9]
      expect(odd_occurrences_in_array(array)).to eq 7
    end
  end

  describe 'Correctness tests' do
    context 'simple1 - simple test n=5' do
      it '[2, 5, 8, 2, 5] to 8' do
        array = [2, 5, 8, 2, 5]
        expect(odd_occurrences_in_array(array)).to eq 8
      end
    end

    context 'simple2 simple test n=11' do
      it '[13, 1, 55, 23, 67, 13, 55, 432, 1, 23, 67] to 3' do
        array = [13, 1, 55, 23, 67, 13, 55, 432, 1, 23, 67]
        expect(odd_occurrences_in_array(array)).to eq 432
      end
    end

    context 'extreme_single_item' do
      it '[42] to 42' do
        array = [42]
        expect(odd_occurrences_in_array(array)).to eq 42
      end
    end

    context 'small1 - small random test n=201' do
      it 'Random Array with n=201' do
        array = Array.new(100) { rand(1...1000000000) }
        random_number = rand(1...1000000000)
        array = array + array + [random_number]
        array.shuffle
        expect(odd_occurrences_in_array(array)).to eq random_number
      end
    end

    context 'small2- small random test n=601' do
      it 'Random Array with n=601' do
        array = Array.new(300) { rand(1...1000000000) }
        random_number = rand(1...1000000000)
        array = array + array + [random_number]
        array.shuffle
        expect(odd_occurrences_in_array(array)).to eq random_number
      end
    end
  end
end
