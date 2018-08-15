require './lib/Challenges/Xi 2012/k_sparse_binary_count'

describe 'KSparseBinaryCount' do
  describe 'Example Test' do
    context 'Example' do
      it 'Returns Result For Example Test' do
        expect(k_sparse_binary_count('101', '1111', 2)).to eq 2
      end
    end
  end

  describe 'Correctness Tests' do
    context 'Simple_k2' do
      it 'Returns Result For Simple Tests, K <= 2 Test 1' do
        expect(k_sparse_binary_count('101', '1111', 1)).to eq 4
      end

      it 'Returns Result For Simple Tests, K <= 2 Test 2' do
        expect(k_sparse_binary_count('1', '1000', 1)).to eq 5
      end

      it 'Returns Result For Simple Tests, K <= 2 Test 3' do
        expect(k_sparse_binary_count('1010', '10100', 1)).to eq 5
      end

      it 'Returns Result For Simple Tests, K <= 2 Test 4' do
        expect(k_sparse_binary_count('101000', '110010', 1)).to eq 3
      end

      it 'Returns Result For Simple Tests, K <= 2 Test 5' do
        expect(k_sparse_binary_count('1', '11111', 2)).to eq 8
      end
    end

    context 'Simple_k3more' do
      it 'Returns Result For Simple Tests, K > 2 Test 1' do
        expect(k_sparse_binary_count('1', '111111', 1)).to eq 20
      end

      it 'Returns Result For Simple Tests, K > 2 Test 2' do
        expect(k_sparse_binary_count('10101', '11011111', 1)).to eq 43
      end

      it 'Returns Result For Simple Tests, K > 2 Test 3' do
        expect(k_sparse_binary_count('1', '111111', 2)).to eq 12
      end

      it 'Returns Result For Simple Tests, K > 2 Test 4' do
        expect(k_sparse_binary_count('10101', '11011111', 2)).to eq 19
      end

      it 'Returns Result For Simple Tests, K > 2 Test 5' do
        expect(k_sparse_binary_count('1', '111111', 3)).to eq 9
      end

      it 'Returns Result For Simple Tests, K > 2 Test 6' do
        expect(k_sparse_binary_count('10101', '11011111', 3)).to eq 12
      end

      it 'Returns Result For Simple Tests, K > 2 Test 7' do
        expect(k_sparse_binary_count('1', '111111', 4)).to eq 7
      end

      it 'Returns Result For Simple Tests, K > 2 Test 8' do
        expect(k_sparse_binary_count('10101', '11011111', 4)).to eq 9
      end

      it 'Returns Result For Simple Tests, K > 2 Test 9' do
        expect(k_sparse_binary_count('1', '111111', 6)).to eq 6
      end

      it 'Returns Result For Simple Tests, K > 2 Test 10' do
        expect(k_sparse_binary_count('10101', '11011111', 6)).to eq 4
      end

      it 'Returns Result For Simple Tests, K > 2 Test 11' do
        expect(k_sparse_binary_count('1', '111111', 8)).to eq 6
      end

      it 'Returns Result For Simple Tests, K > 2 Test 12' do
        expect(k_sparse_binary_count('10101', '11011111', 8)).to eq 3
      end
    end
  end
end
