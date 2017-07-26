require 'genomic_range_query'

describe 'Genomic Range Query' do
  describe 'Example Tests' do
    it 'example: S = CAGCCTA, P = [2,5,0], Q = [4,5,6] gives [2,4,1]' do
      expect(genomic_range_query('CAGCCTA', [2,5,0], [4,5,6])).to eq [2,4,1]
    end
  end

  describe 'Correctness Tests' do
    context 'extreme_sinlge' do
      it 'single character string' do
        expect(genomic_range_query('A', [0], [0])).to eq [1]
        expect(genomic_range_query('C', [0], [0])).to eq [2]
        expect(genomic_range_query('G', [0], [0])).to eq [3]
        expect(genomic_range_query('T', [0], [0])).to eq [4]
      end
    end

    context 'extreme_double' do
      it 'double character string' do
        expect(genomic_range_query('AT', [0,1], [0,1])).to eq [1,4]
        expect(genomic_range_query('CG', [0,0], [0,1])).to eq [2,2]
        expect(genomic_range_query('GC', [0,1], [0,1])).to eq [3,2]
        expect(genomic_range_query('TC', [0,0], [0,1])).to eq [4,2]
      end
    end

    context 'simple' do
      it 'simple tests' do
        expect(genomic_range_query('CATGCCTAT', [0,2,5,0], [8,5,7,3])).to eq [1,2,1,1]
      end
    end

    context 'small_length_string' do
      it 'small length simple string' do
        expect(genomic_range_query('ATC', [0,1], [2,1])).to eq [1,4]
      end
    end

    context 'small_random' do
      it 'small random string, length = ~300' do
        small_random_string = 'A'
        299.times do
          small_random_string += ['A' 'C' 'G' 'T'].sample
        end
        expect(genomic_range_query(small_random_string, [0], [300])).to eq [1]
      end
    end
  end

  describe 'Performance Tests' do
    context 'almost_all_same_letters' do
      it 'GGGGGG..??..GGGGGG..??..GGGGGG' do
        small_random_string = 'A'
        100000.times do
          small_random_string += 'G'
        end
        expect(genomic_range_query(small_random_string, [0], [100000])).to eq [1]

        small_random_string = 'A'
        100000.times do
          small_random_string += 'C'
        end
        expect(genomic_range_query(small_random_string, [0], [100000])).to eq [1]

        small_random_string = 'A'
        100000.times do
          small_random_string += 'G'
        end
        expect(genomic_range_query(small_random_string, [0], [100000])).to eq [1]

        small_random_string = 'A'
        100000.times do
          small_random_string += 'T'
        end
        expect(genomic_range_query(small_random_string, [0], [100000])).to eq [1]

      end
    end

    context 'large_random' do
      it 'large random string, length' do
        small_random_string = 'A'
        100000.times do
          small_random_string += ['A' 'C' 'G' 'T'].sample
        end
        expect(genomic_range_query(small_random_string, [0], [100000])).to eq [1]
      end
    end

    context 'extreme_large' do
      it 'all max ranges' do
        small_random_string = 'A'
        100000.times do
          small_random_string += ['A' 'C' 'G' 'T'].sample
        end
        expect(genomic_range_query(small_random_string, [0]*50000, [100000]*50000)).to eq [1]*50000
      end
    end
  end
end
