require "./lib/Lesson 5 Prefix Sums/MinAvgTwoSlice/min_avg_two_slice"

describe 'MinAvgTwoSlice' do
  describe 'Example Tests' do
    it 'example: [4,2,2,5,1,5,8] gives 1' do
      expect(min_avg_two_slice([4,2,2,5,1,5,8])).to eq 1
    end
  end

  describe 'Correctness Tests' do
    context 'double_quadruple' do
      it 'two or four elements' do
        expect(min_avg_two_slice([-5733, 2354])).to eq 0
        expect(min_avg_two_slice([-7146, 5167])).to eq 0

        expect(min_avg_two_slice([-4707, 9874, 7707, 4321])).to eq 0
        expect(min_avg_two_slice([2527, 4048, 7713, -7665])).to eq 2
      end
    end

    context 'simple1' do
      it 'simple test, the best slice has length 3' do
        expect(min_avg_two_slice([4634, 7751, 7611, -9009, -1281, 7537])).to eq 3
        expect(min_avg_two_slice([3454, 4617, 4938, -6356, -5866, 7226])).to eq 3
      end
    end

    context 'simple2' do
      it 'simple test, the best slice has length 3' do
        expect(min_avg_two_slice([5008, 7736, 6946, 869, 2486, 8996, 2784, 7027, 9502, -1347])).to eq 3
      end
    end

    context 'small_random' do
      it 'random, length = 100' do
        array = [-1064, 2548, 4763, -2117, -6005, 6326, -7522, -6257,
                -8461, 6950, 1324, -2959, 509, 2563, -898, 8086, -6411,
                554, 3250, -8255, 3974, -4033, -7743, -7017, -8935, -8169,
                6809, -8175, -4434, -4647, 6692, 9041, 9596, 350, 9451,
                -2014, -6602, 1856, 1932, 8365, -3191, -9162, 9146, -2603,
                8272, -9710, -1169, 5539, 1338, -6744, 4662, -2315, 456, 1085,
                -4711, 5935, -6898, -1175, -9679, 3315, 8911, -7627, 2417,
                -3959, 6176, 3839, -3965, 2261, -9044, 7404, -1788, -924,
                1893, -2718, 9806, 9897, -2959, -2258, 8756, -3315, -5404,
                -8932, 4091, -4270, -2778, -654, 2265, -9157, 5137, -5421,
                -9511, 1000, -8276, -5975, 466, 7691, -1951, 653, 5424, 878,
                -9381, -8233, -3952, -10000, 2149, -5451, 8703, 2646, 8528,
                -5449, -279, -9368, 4322, -2660, -8543, 8860, 2004, 5680,
                -9775, 6938, 1625, -3169, -9610, 3730, 705, 1791, -2649,
                2823, 6227, 1017, -1952, -2202, 1779, 8765, -5900, 6464,
                2000, -7323, 738, 3127, -8981, -6599, -6399, -3438, 7549,
                -6992, -8524, 8243, 4322, 3826]

        expect(min_avg_two_slice(array)).to eq 100
      end
    end

    context 'medium_range' do
      it 'increasing, decreasing (length = ~100) and small functional' do
        # array = Array.new(1000) { rand(-10000..10000) }
        # p array
        #
        # 1000000.times do
        #   array = Array.new(1000) { rand(100..10000) }
        #   array.sort!
        #   break if min_avg_two_slice(array) == 100
        # end
        #
        # p array
      end
    end
  end

  describe 'Performance Test' do
    context 'medium_random' do
      it 'random, N = ~700' do
        array = Array.new(700) { rand(-10000..10000) }
        expect(min_avg_two_slice(array)).to be_a Integer
      end
    end

    context 'large_ones' do
      it 'numbers from -1 to 1, N = ~100,000' do
        array = Array.new(100000) { rand(-1..1) }
        expect(min_avg_two_slice(array)).to be_a Integer

        array = Array.new(100000) { rand(-1..1) }
        expect(min_avg_two_slice(array)).to be_a Integer
      end
    end

    context 'large_random' do
      it 'random, N = ~100,000' do
        array = Array.new(100000) { rand(-10000..10000) }
        expect(min_avg_two_slice(array)).to be_a Integer
      end
    end

    context 'extreme_values' do
      it 'all maximal values, N = ~100,000' do
        array = Array.new(100000) { rand(-10000..10000) }
        expect(min_avg_two_slice(array)).to be_a Integer

        array = Array.new(100000) { rand(-10000..10000) }
        expect(min_avg_two_slice(array)).to be_a Integer

        array = Array.new(100000) { rand(-10000..10000) }
        expect(min_avg_two_slice(array)).to be_a Integer
      end
    end

    context 'large_sequence' do
      it 'many seqeneces, N = ~100,000' do
        array = Array.new(100000) { rand(-10000..10000) }
        expect(min_avg_two_slice(array)).to be_a Integer

        array = Array.new(100000) { rand(-10000..10000) }
        expect(min_avg_two_slice(array)).to be_a Integer
      end
    end
  end
end
