require 'genomic_range_query'

describe 'Genomic Range Query' do
  describe 'Example Tests' do
    it 'example: S = CAGCCTA, P = [2,5,0], Q = [4,5,6] gives [2,4,1]' do
      expect(genomic_range_query('CAGCCTA', [2,5,0], [4,5,6])).to eq [2,4,1]
    end
  end

  describe 'Correctness Tests'
    context 'extreme_sinlge' do
      it 'single character string' do

      end
    end

    context 'extreme_double' do
      it 'double character string' do

      end
    end

    context 'simple' do
      it 'simple tests' do

      end
    end

    context 'small_length_string' do
      it 'small length simple string' do

      end
    end

    context 'small_random' do
      it 'small random string, length = ~300' do

      end
    end
  end
end
