require 'genomic_range_query'

describe 'Genomic Range Query' do
  describe 'Example Tests' do
    it 'example: S = CAGCCTA, P = [2,5,0], Q = [4,5,6] gives [2,4,1]' do
      expect(genomic_range_query('CAGCCTA', [2,5,0], [4,5,6])).to eq [2,4,1]
    end
  end
