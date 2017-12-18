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

    context 'Small_simple' do
      it 'Small Simple Tests, Easy To Solve Even With Heuristic Approach 1' do
        expect(socks_laundering(5, [1,1,3,4], [3,3,3,5])).to eq 3
      end

      it 'Small Simple Tests, Easy To Solve Even With Heuristic Approach 2' do
        expect(socks_laundering(1, [1,2,3,4], [1,5])).to eq 1
      end
    end

    context 'No_laundry' do
      it 'Tests Where K = 0 1' do
        expect(socks_laundering(0, [1,2,3,4], [3,2,1,5])).to eq 0
      end

      it 'Tests Where K = 0 2' do
        expect(socks_laundering(0, [2,2,2,2,4], [3,1,3,3])).to eq 2
      end
    end
  end
end
