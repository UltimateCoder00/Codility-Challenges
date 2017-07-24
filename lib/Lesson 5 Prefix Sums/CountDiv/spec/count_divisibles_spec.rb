require 'count_divisibles'

describe 'Count Divisibles' do
  describe 'Example Tests' do
    it 'example: ((6, 11, 2)) to 3' do
      expect(count_divisibles(6, 11, 2)).to eq 3
    end
  end

  describe 'Correctness Tests' do
    context 'simple' do
      it 'A = 11, B = 345, K = 17' do

      end
    end

    context 'minimal'
      it 'A = B in {0,1}, K = 11' do

      end
    end

    context 'extreme_ifempty'
      it 'A = 10, B = 10, K in {5,7,20}' do

      end
    end

    context 'extreme_endpoints'
      it 'verify handling of range endpoints, multiple runs' do

      end
    end
  end

  describe "Performance Tests" do
    context 'big_values' do
      it 'A = 100, B=123M+, K=2' do

      end
    end

    context 'big_values2' do
      it 'A = 101, B = 123M+, K = 10K' do

      end
    end

    context 'big_values3' do
      it 'A = 0, B = MAXINT, K in {1,MAXINT}' do

      end
    end

    context 'big_values4' do
      it 'A, B, K in {1,MAXINT}' do

      end
    end
  end
end
