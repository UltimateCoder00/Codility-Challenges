require "./lib/Lesson 7 Stacks And Queues/Fish/fish"

describe 'Fish' do
  describe 'Example Test' do
    it 'Example' do
      expect(fish([4,3,2,1,5], [0,1,0,0,0])).to eq 2
    end
  end

  describe 'Correctness Tests' do
    context 'Extreme_small' do
      it '1 Fish 1' do
        expect(fish([1], [0])).to eq 1
      end

      it '1 Fish 2' do
        expect(fish([1000000000], [1])).to eq 1
      end

      it '2 Fishes 1' do
        expect(fish([1000000000,999999999], [0,0])).to eq 2
      end

      it '2 Fishes 2' do
        expect(fish([1000000000,999999999], [1,0])).to eq 1
      end

      it '2 Fishes 3' do
        expect(fish([1000000000,999999999], [0,1])).to eq 2
      end

      it '2 Fishes 4' do
        expect(fish([999999999,1000000000], [1,0])).to eq 1
      end
    end

    context 'Simple1' do
      it 'Simple Test' do
        expect(fish([8,6,5,3,2,4,7], [1,1,1,0,0,1,1])).to eq 5
      end
    end

    context 'Simple2' do
      it 'Simple Test 1' do
        expect(fish([8,6,5,3,2,4,7], [1,1,1,1,1,0,0])).to eq 1
      end

      it 'Simple Test 1' do
        expect(fish([8,6,4,2,1,3,5], [1,1,1,1,1,0,0])).to eq 2
      end
    end

    context 'Small_random' do
      it 'Small Random Test, N = ~100' do
        array1 = [60784, 686946, 40022, 400519, 657473, 336999, 36846, 8629,
                  915034, 998496, 924250, 822568, 619077, 276547, 241586, 673773,
                  30494, 74609, 18604, 810348, 983816, 474571, 222168, 696835,
                  810107, 549971, 142600, 281896, 987134, 690593, 476768, 58824,
                  508926, 51353, 771919, 511351, 976304, 595971, 178049, 967459,
                  234972, 363128, 90978, 112527, 28143, 663596, 905973, 818820,
                  946713, 388246, 363322, 404614, 344178, 6674, 661321, 621452,
                  955892, 162267, 312541, 418840, 476262, 341790, 208793, 423207,
                  558190, 958749, 364193, 356345, 636930, 666411, 135069, 268254,
                  601457, 52058, 459262, 440055, 145302, 167563, 113832, 770673,
                  481024, 374754, 842404, 912042, 690115, 189232, 102613, 726328,
                  815698, 171214, 500012, 384581, 427243, 163524, 518997, 748528,
                  695896, 274048, 10860, 430154]
        array2 = [0, 1, 1, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 1, 0, 1, 0, 1, 0,
                  0, 1, 0, 0, 1, 1, 0, 1, 1, 0, 0, 0, 0, 1, 0, 1, 0, 0, 1, 0, 0,
                  1, 0, 0, 0, 1, 1, 1, 1, 0, 0, 1, 1, 0, 0, 0, 1, 1, 1, 0, 1, 0,
                  1, 0, 0, 0, 1, 0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 1,
                  0, 1, 0, 0, 1, 1, 0, 0, 1, 0, 0, 0, 0, 1, 1, 1]
        expect(fish(array1, array2)).to eq 16
      end
    end
  end

  describe 'Performance Tests' do
    context 'Medium_random' do
      it 'Small Medium Test, N = ~5,000' do
        array1 = Array.new(5000) { rand(10000000..10010000)}
        array2 = Array.new(5000) { rand(0..1)}
        expect(fish(array1, array2)).to be_a Integer
      end
    end

    context 'Large_random' do
      it 'Small Medium Test, N = ~100,000' do
        array1 = Array.new(100000) { rand(999000000..1000000000)}
        array2 = Array.new(100000) { rand(0..1)}
        expect(fish(array1, array2)).to be_a Integer
      end
    end

    context 'Extreme_range1' do
      it 'All Except One Fish Flowing In The Same Direction 1' do
        array1 = Array.new(100000) { rand(1..100001)}
        array2 = [0]*99999
        array2.insert(rand(0...99999), 1)
        expect(fish(array1, array2)).to be_a Integer
      end

      it 'All Except One Fish Flowing In The Same Direction 2' do
        array1 = Array.new(100000) { rand(1..100000)}
        array2 = [1]*99999
        array2.insert(rand(0...99999), 0)
        expect(fish(array1, array2)).to be_a Integer
      end
    end

    context 'Extreme_range2' do
      it 'All Fish Flowing In The Same Direction' do
        array1 = Array.new(100000) { rand(990000000..1000000000)}
        array2 = [0]*100000
        expect(fish(array1, array2)).to be_a Integer
      end
    end
  end
end
