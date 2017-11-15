require "./lib/Lesson 2 Arrays/OddOccurrencesInArray/odd_occurrences_in_array"

describe 'OddOccurrencesInArray' do
  describe 'Example Test' do
    context 'Example1' do
      it '[9, 3, 9, 3, 9, 7, 9] to 7' do
        array = [9, 3, 9, 3, 9, 7, 9]
        expect(odd_occurrences_in_array(array)).to eq 7
      end
    end
  end

  describe 'Correctness Tests' do
    context 'Simple1' do
      it 'Simple Test N=5' do
        array = [2, 5, 8, 2, 5]
        expect(odd_occurrences_in_array(array)).to eq 8
      end
    end

    context 'Simple2' do
      it 'Simple Test N=11' do
        array = [13, 1, 55, 23, 67, 13, 55, 432, 1, 23, 67]
        expect(odd_occurrences_in_array(array)).to eq 432
      end
    end

    context 'Extreme_single_item' do
      it '[42]' do
        array = [42]
        expect(odd_occurrences_in_array(array)).to eq 42
      end
    end

    context 'Small1' do
      it 'Small Random Test N=201' do
        array = [91, 69, 77, 91, 26, 64, 91, 88, 58, 17, 42, 100, 11, 32, 96,
                  45, 21, 32, 91, 34, 43, 63, 81, 50, 9, 58, 4, 10, 20, 70, 29,
                  70, 17, 12, 3, 71, 86, 22, 24, 2, 65, 31, 14, 65, 60, 45, 16,
                  64, 56, 44, 17, 93, 87, 69, 100, 59, 35, 12, 61, 52, 44, 100,
                  84, 12, 89, 1, 66, 32, 73, 96, 54, 77, 6, 67, 12, 46, 34, 8,
                  75, 10, 26, 9, 67, 31, 5, 3, 22, 51, 2, 3, 67, 53, 14, 32, 13,
                  28, 39, 22, 20, 23, 42, 91, 69, 77, 91, 26, 64, 91, 88, 58,
                  17, 42, 100, 11, 32, 96, 45, 21, 32, 91, 34, 43, 63, 81, 50,
                  9, 58, 4, 10, 20, 70, 29, 70, 17, 12, 3, 71, 86, 22, 24, 2,
                  65, 31, 14, 65, 60, 45, 16, 64, 56, 44, 17, 93, 87, 69, 100,
                  59, 35, 12, 61, 52, 44, 100, 84, 12, 89, 1, 66, 32, 73, 96,
                  54, 77, 6, 67, 12, 46, 34, 8, 75, 10, 26, 9, 67, 31, 5, 3, 22,
                  51, 2, 3, 67, 53, 14, 32, 13, 28, 39, 22, 20, 23]
        expect(odd_occurrences_in_array(array)).to eq 42
      end
    end

    context 'Small2' do
      it 'Small Random Test N=601' do
        array = Array.new(601) { rand(1..5000) }
        expect(odd_occurrences_in_array(array)).to be_a Integer
      end
    end
  end

  describe 'Performance Tests' do
    context 'Medium1' do
      it 'Medium Random Test N=2001' do
        array = Array.new(2001) { rand(1..10000) }
        expect(odd_occurrences_in_array(array)).to be_a Integer
      end
    end

    context 'Medium2' do
      it 'Medium Random Test N=100003' do
        array = Array.new(100003) { rand(1..2000000) }
        expect(odd_occurrences_in_array(array)).to be_a Integer
      end
    end

    context 'Big1' do
      it 'Big Random Test N=999999, Multiple Repetitions' do
        array = Array.new(1000000) { rand(1...1000000000) }
        expect(odd_occurrences_in_array(array*10 + [1])).to be_a Integer
      end
    end

    context 'Big2' do
      it 'Big Random Test N=999999' do
        array = Array.new(999999) { rand(1..1000000000) }
        expect(odd_occurrences_in_array(array)).to be_a Integer
      end
    end
  end
end
