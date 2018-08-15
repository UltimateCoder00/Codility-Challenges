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
  end
end
