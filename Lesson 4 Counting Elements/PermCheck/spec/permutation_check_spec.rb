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

        end
      end

      context 'single' do
        it 'single element' do

        end
      end

      context 'double' do
        it 'two elements' do

        end
      end

      context 'antiSum1' do
        it 'total sum is correct, but it is not a permutation, N <= 10' do

        end
      end

      context 'small_permutation' do
        it 'permutation + one element occurs twice, N = ~100' do

        end
      end
    end
  end
end
