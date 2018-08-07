require './lib/Challenges/Alpha 2010/prefix_set'

describe 'PrefixSet' do
  describe 'Example Test' do
    context 'Example1' do
      it 'Returns Result For Example Test' do
        expect(prefix_set([2, 2, 1, 0, 1])).to eq 3
      end
    end
  end

  describe 'Correctness Tests' do
    context 'Extreme_single' do
      it 'Returns Result For 1-Element Sequence' do
        expect(prefix_set([0])).to eq 0
      end
    end

    context 'Extreme_two' do
      it 'Returns Result For 1-Element Sequence' do
        expect(prefix_set([0, 1])).to eq 1
      end
    end

    context 'Extreme_constant' do
      it 'Returns Result For Constant Sequence' do
        array = [2, 2, 2, 2, 2, 2, 2, 2, 2, 2]
        expect(prefix_set(array)).to eq 0
      end
    end

    context 'Extreme_identity' do
      it 'Returns Result For Identity Permutation' do
        array = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
        expect(prefix_set(array)).to eq 9
      end
    end

    context 'Extreme_permutation' do
      it 'Returns Result For Permutation' do
        array = [3, 7, 12, 6, 11, 2, 5, 13, 0, 4, 10, 8, 14, 1, 9]
        expect(prefix_set(array)).to eq 14
      end
    end

    context 'Simple1' do
      it 'Returns Result For Very Simple Sequence' do
        array = [1, 3, 5, 8, 3, 2, 5, 7, 3, 4, 5, 2, 4, 1, 3]
        expect(prefix_set(array)).to eq 9
      end
    end

    context 'Simple2' do
      it 'Returns Result For Simple Sequence' do
        array = [1, 1, 8, 4, 1, 12, 8, 1, 5, 5, 2, 1, 10, 4, 2,
                 8, 1, 4, 1, 1, 1, 1]
        expect(prefix_set(array)).to eq 12
      end
    end

    context 'Binary' do
      it 'Returns Result For Binary Sequence' do
        array = [1, 0, 0, 1, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0]
        expect(prefix_set(array)).to eq 1
      end
    end

    context 'Periodic' do
      it 'Returns Result For Periodic Sequence' do
        array = [6, 9, 42, 6, 9, 42, 6, 9, 42, 6, 9, 42, 6, 9, 42,
                 6, 9, 42, 6, 9, 42, 6, 9, 42, 6, 9, 42, 6, 9, 42,
                 6, 9, 42, 6, 9, 42, 6, 9, 42, 6, 9, 42, 6, 9, 42,
                 6, 9, 42, 6, 9, 42, 6, 9, 42, 6, 9, 42, 6, 9, 42,
                 6, 9, 42, 6, 9, 42, 6, 9, 42, 6, 9, 42, 6, 9, 42,
                 6, 9, 42, 6, 9, 42, 6, 9, 42, 6, 9, 42, 6, 9, 42,
                 6, 9, 42, 6, 9, 42, 6, 9]
        expect(prefix_set(array)).to eq 2
      end
    end
  end
end
