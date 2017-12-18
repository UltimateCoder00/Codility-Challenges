require "./lib/Lesson 92 Tasks From Indeed Prime 2016 College Coders Challenge/SocksLaundering/socks_laundering"

describe 'SocksLaundering' do

  describe 'Example Test' do
    it 'Example' do
      expect(socks_laundering(2, [1,2,1,1], [1,4,3,2,4])).to eq 3
    end
  end

  describe 'Correctness Tests' do
    context 'Smallest' do
      it 'Smallest Possible Tests 1' do
        expect(socks_laundering(1, [1], [4])).to eq 0
      end

      it 'Smallest Possible Tests 2' do
        expect(socks_laundering(1, [5], [5])).to eq 1
      end
    end
  end
end
