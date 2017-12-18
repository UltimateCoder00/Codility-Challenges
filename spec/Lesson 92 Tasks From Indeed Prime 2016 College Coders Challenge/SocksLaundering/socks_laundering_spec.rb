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

    context 'All_dirty' do
      it 'There Are No Clean Socks Taken 1' do
        expect(socks_laundering(5, [1,2,3,4], [5,5,6,6,7,7])).to eq 2
      end

      it 'There Are No Clean Socks Taken 2' do
        expect(socks_laundering(3, [1,2], [8,8,8,8,9])).to eq 1
      end

      it 'There Are No Clean Socks Taken 3' do
        expect(socks_laundering(4, [2,3,4,5], [6,7,8,9])).to eq 0
      end
    end

    context 'All_clean' do
      it 'There Are No Dirty Socks Taken After Laundry 1' do
        expect(socks_laundering(10, [1,1,2,2,3,3,7], [4,5,6])).to eq 3
      end

      it 'There Are No Dirty Socks Taken After Laundry 2' do
        expect(socks_laundering(20, [2,2,2,2,9], [3,4,5,6,7])).to eq 2
      end
    end

    context 'Odd_even_dirty_check' do
      it 'There Are No Dirty Socks Taken After Laundry 1' do
        expect(socks_laundering(2, [1], [3,2,5,5])).to eq 1
      end

      it 'There Are No Dirty Socks Taken After Laundry 2' do
        expect(socks_laundering(6, [1,2], [1,3,3,3,2,5,5])).to eq 4
      end
    end

    context 'Random_few_colors' do
      it 'Randomly Generated Tests With Only A Couple Of Colors 1' do
        expect(socks_laundering(8, [3,2,1,3,3,2,3,1], [3,2,3,2,1,3,3,3])).to eq 7
      end

      it 'Randomly Generated Tests With Only A Couple Of Colors 2' do
        expect(socks_laundering(6, [3,4,3,1,1,4,2,2,2,3], [4,4,4,1,2,1,1,1,3,2])).to eq 8
      end
    end

    context 'Maximal' do
      it 'Maximal Possible Test Cases 1' do
        clean_array = [40, 40, 20, 44, 24, 9, 39, 32, 37, 28, 3, 38, 38, 7, 31,
                        34, 28, 31, 14, 17, 32, 22, 21, 42, 32, 39, 46, 17, 2,
                        17, 20, 15, 28, 26, 34, 46, 3, 40, 26, 8, 22, 43, 34,
                        35, 11, 38, 22, 39, 16, 46]
        dirty_array = [15, 44, 17, 33, 42, 13, 29, 15, 50, 22, 6, 22, 40, 15,
                        46, 40, 35, 13, 23, 50, 41, 34, 47, 44, 1, 49, 10, 30,
                        49, 38, 31, 25, 50, 39, 46, 18, 39, 46, 26, 34, 23, 41,
                        32, 24, 19, 49, 37, 43, 30, 2]

        expect(socks_laundering(50, clean_array, dirty_array)).to eq 37
      end

      it 'Maximal Possible Test Cases 2' do
        clean_array = [44, 28, 15, 40, 46, 27, 46, 6, 41, 28, 40, 29, 11, 38, 2,
                        48, 23, 32, 1, 45, 21, 34, 24, 27, 23, 26, 30, 46, 3,
                        20, 18, 50, 3, 40, 26, 25, 1, 22, 9, 31, 49, 34, 13, 9,
                        23, 8, 46, 40, 19, 17]
        dirty_array = [3, 48, 29, 23, 14, 7, 8, 11, 26, 6, 11, 41, 49, 32, 20,
                        45, 14, 46, 11, 9, 5, 13, 34, 3, 46, 15, 30, 45, 20, 46,
                        32, 2, 25, 46, 11, 3, 13, 13, 49, 1, 18, 22, 36, 33, 2,
                        22, 42, 45, 39, 32]

        expect(socks_laundering(25, clean_array, dirty_array)).to eq 33
      end

      it 'Maximal Possible Test Cases 3' do
        clean_array = [14, 1, 19, 10, 16, 9, 12, 16, 10, 12, 5, 11, 8, 16, 20,
                        19, 6, 6, 6, 17, 7, 10, 2, 14, 12, 19, 10, 18, 8, 10,
                        15, 11, 19, 3, 5, 2, 11, 19, 20, 16, 1, 13, 20, 9, 16,
                        3, 6, 16, 16, 5]
        dirty_array = [6, 13, 10, 15, 13, 3, 20, 2, 14, 18, 19, 1, 20, 18, 20,
                        17, 7, 15, 18, 3, 18, 13, 18, 17, 9, 1, 8, 14, 2, 3, 8,
                        8, 4, 6, 9, 3, 16, 2, 6, 14, 7, 11, 16, 13, 20, 4, 1,
                        15, 8, 20]

        expect(socks_laundering(1, clean_array, dirty_array)).to eq 20
      end

      it 'Maximal Possible Test Cases 4' do
        clean_array = [50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50,
                        50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50,
                        50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50,
                        50, 50, 50, 50, 50, 50, 50, 50]
        dirty_array = [50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50,
                        50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50,
                        50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50,
                        50, 50, 50, 50, 50, 50, 50, 50]
                        
        expect(socks_laundering(50, clean_array, dirty_array)).to eq 50
      end
    end
  end
end
