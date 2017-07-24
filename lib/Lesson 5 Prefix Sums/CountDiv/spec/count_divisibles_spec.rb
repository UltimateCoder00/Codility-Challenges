require 'count_divisibles'

describe 'Count Divisibles' do
  describe 'Example Tests' do
    it 'example: A = 6, B = 11, K = 2 to 3' do
      expect(count_divisibles(6, 11, 2)).to eq 3
    end
  end

  describe 'Correctness Tests' do
    context 'simple' do
      it 'A = 11, B = 345, K = 17' do
        expect(count_divisibles(11, 345, 17)).to eq 20
      end
    end

    context 'minimal' do
      it 'A = B in {0,1}, K = 11' do
        expect(count_divisibles(0, 0, 11)).to eq 1
        expect(count_divisibles(0, 1, 11)).to eq 1
      end
    end

    context 'extreme_ifempty' do
      it 'A = 10, B = 10, K in {5,7,20}' do
        expect(count_divisibles(10, 10, 5)).to eq 1
        expect(count_divisibles(10, 10, 7)).to eq 0
        expect(count_divisibles(10, 10, 20)).to eq 0
      end
    end

    context 'extreme_endpoints' do
      it 'verify handling of range endpoints, multiple runs' do
        expect(count_divisibles(0, 1000, 2)).to eq 501
        expect(count_divisibles(10, 10000, 20)).to eq 500
        expect(count_divisibles(100, 100000, 20)).to eq 4996
        expect(count_divisibles(100, 1000000, 500)).to eq 2000
        expect(count_divisibles(1000, 1000000, 80000)).to eq 12
        expect(count_divisibles(10000, 1000000, 300)).to eq 3300
      end
    end
  end

  describe "Performance Tests" do
    context 'big_values' do
      it 'A = 100, B=123M+, K=2' do
        expect(count_divisibles(100, 125000000, 2)).to be_a(Integer)
      end
    end

    context 'big_values2' do
      it 'A = 101, B = 123M+, K = 10K' do
        expect(count_divisibles(100, 125000000, 10000)).to be_a(Integer)
      end
    end

    context 'big_values3' do
      it 'A = 0, B = MAXINT, K in {1,MAXINT}' do
        k = rand(2000000001)
        expect(count_divisibles(0, 2000000000, k)).to be_a(Integer)
      end
    end

    context 'big_values4' do
      it 'A, B, K in {1,MAXINT}' do
        b = rand(200000000)
        k = rand(1..b)
        expect(count_divisibles(1, b, k)).to be_a(Integer)
      end
    end
  end
end
