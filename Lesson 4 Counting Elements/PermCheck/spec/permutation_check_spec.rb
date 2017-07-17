require 'permutation_check'

describe 'Permutation Check' do
  describe 'Example Tests' do
    context 'example1' do
      it 'the first example test - [4, 1, 3, 2]' do
        expect(permutation_check([4, 1, 3, 2])).to eq 1
      end
    end

    context 'example2' do
      it 'the second example test - [4, 1, 3]' do
        expect(permutation_check([4, 1, 3])).to eq 0
      end
    end
  end

  describe 'Correctness Tests' do
    context 'extreme_min_max' do
      it 'single element with minimal/maximal value' do
        expect(permutation_check([1])).to eq 1
        expect(permutation_check([1000000000])).to eq 0
      end
    end

    context 'single' do
      it 'single element' do
        expect(permutation_check([456])).to eq 0
        expect(permutation_check([3457347])).to eq 0
      end
    end

    context 'double' do
      it 'two elements' do
        expect(permutation_check([1, 2])).to eq 1
        expect(permutation_check([2, 1])).to eq 1
        expect(permutation_check([1, 4])).to eq 0
        expect(permutation_check([2, 3])).to eq 0
      end
    end

    context 'antiSum1' do
      it 'total sum is correct, but it is not a permutation, N <= 10' do
        expect(permutation_check([1, 2 , 3, 5, 5, 5, 7, 8, 9, 10])).to eq 0

        expect(permutation_check([2, 2, 2])).to eq 0

        expect(permutation_check([1, 5, 4, 5])).to eq 0

        expect(permutation_check([6, 4, 5, 6])).to eq 0
      end
    end

    context 'small_permutation' do
      it 'permutation + one element occurs twice, N = ~100' do
        array = [*1..100]
        array << (rand(100) + 1)
        array.shuffle
        expect(permutation_check(array)).to eq 0

        array = [*1..105]
        array << (rand(105) + 1)
        array.shuffle
        expect(permutation_check(array)).to eq 0
      end
    end
  end

  describe 'Performance Tests' do
    context 'medium_permutation' do
      it 'permutation + few elements occur twice, N = ~10,000' do
        array = [*1..10000]
        array << (rand(10000) + 1)
        array << (rand(10000) + 1)
        array << (rand(10000) + 1)
        array << (rand(10000) + 1)
        array << (rand(10000) + 1)
        array.shuffle
        expect(permutation_check(array)).to eq 0

        array2 = [*1..10000]
        array2 << (rand(10000) + 1)
        array2 << (rand(10000) + 1)
        array2 << (rand(10000) + 1)
        array2 << (rand(10000) + 1)
        array2 << (rand(10000) + 1)
        array2.shuffle
        expect(permutation_check(array2)).to eq 0
      end
    end

    context 'antiSum2' do
      it 'total sum is correct, but it is not a permutation, N = ~100,000' do
        array = [*1..100000]
        random_number = rand(90000)
        array << array[random_number + 1]
        array << array[random_number + 1]
        array.delete_at(random_number)
        array.delete_at(random_number+1)
        array.shuffle
        expect(permutation_check(array)).to eq 0

        array2 = [*1..100000]
        random_number2 = rand(90000)
        array2 << array2[random_number2 + 1]
        array2 << array2[random_number2 + 1]
        array2.delete_at(random_number2)
        array2.delete_at(random_number2+1)
        array2.shuffle
        expect(permutation_check(array2)).to eq 0
      end
    end

    context 'large_permutation' do
      it 'permutation + one element occurs three times, N = ~100,000' do
        array = [*1..100000]
        random_number = (rand(100000) + 1)
        array << random_number
        array << random_number
        array << random_number
        array.shuffle
        expect(permutation_check(array)).to eq 0

        array2 = [*1..100000]
        random_number2 = (rand(100000) + 1)
        array2 << random_number2
        array2 << random_number2
        array2 << random_number2
        array2.shuffle
        expect(permutation_check(array2)).to eq 0
      end
    end

    context 'large_range' do
      it 'sequence 1, 2, ..., N, N = ~100,000' do
        array = [*1..90000]
        expect(permutation_check(array)).to eq 1

        arrays = [*1..100000]
        expect(permutation_check(arrays)).to eq 1
      end
    end

    context 'extreme_values' do
      it 'all the same values, N = ~100,000' do
        random_number = (rand(100000) + 1)
        array = [random_number]*100000
        expect(permutation_check(array)).to eq 0

        random_number2 = (rand(100000) + 1)
        array2 = [random_number2]*100000
        expect(permutation_check(array2)).to eq 0

        random_number3 = (rand(100000) + 1)
        array3 = [random_number3]*100000
        expect(permutation_check(array3)).to eq 0
      end
    end
  end
end
