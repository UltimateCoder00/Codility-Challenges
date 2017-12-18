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

    context 'Odd_clean_with_odd_dirty' do
      it 'Tests Causing Solution That"s Only Pairing Clean Socks Of Odd Count With Dirty Socks Of Odd Count To Fail 1' do
        expect(socks_laundering(1, [1,1,3], [3,3,2])).to eq 2
      end

      it 'Tests Causing Solution That"s Only Pairing Clean Socks Of Odd Count With Dirty Socks Of Odd Count To Fail 2' do
        expect(socks_laundering(3, [2,3,4], [2,2,3,3,4,4])).to eq 3
      end

      it 'Tests Causing Solution That"s Only Pairing Clean Socks Of Odd Count With Dirty Socks Of Odd Count To Fail 3' do
        expect(socks_laundering(5, [2,3,4], [2,2,2,2,2])).to eq 3
      end
    end

    context 'Saving_one_used_dirty_check' do
      it 'Tests Causing Solution That"s Not Saving If Dirty Sock Was Used To Pair With Clean Sock To Fail 1' do
        expect(socks_laundering(5, [1,1,2], [2,2,3])).to eq 2
      end

      it 'Tests Causing Solution That"s Not Saving If Dirty Sock Was Used To Pair With Clean Sock To Fail 2' do
        expect(socks_laundering(6, [1,2,4,3,3,6], [1,1,2,2,4,4,5])).to eq 4
      end
    end
  end
end
