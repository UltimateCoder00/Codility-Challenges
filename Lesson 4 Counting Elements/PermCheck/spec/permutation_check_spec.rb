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
  end
end
