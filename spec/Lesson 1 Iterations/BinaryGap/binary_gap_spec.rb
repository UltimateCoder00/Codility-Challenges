require "./lib/Lesson 1 Iterations/BinaryGap/binary_gap"

describe 'BinaryGap' do

  describe 'Example Tests' do
    it 'example 1: 1041=10000010001' do
      n = 1041
      expect(binary_gap(n)).to eq 5
    end

    it 'example 2: 15=1111' do
      n = 15
      expect(binary_gap(n)).to eq 0
    end
  end

  describe 'Correctness Tests' do

    context 'extremes' do
      it '1=1' do
        n = 1
        expect(binary_gap(n)).to eq 0
      end

      it '5=101' do
        n = 5
        expect(binary_gap(n)).to eq 1
      end

      it '2147483647=1111111111111111111111111111111' do
        n = 2147483647
        expect(binary_gap(n)).to eq 0
      end
    end

    context 'trailing_zeroes' do
      it '6=110' do
        n = 6
        expect(binary_gap(n)).to eq 0
      end

      it '328=101001000' do
        n = 328
        expect(binary_gap(n)).to eq 2
      end
    end

    context 'power_of_2' do
      it '5=101' do
        n = 5
        expect(binary_gap(n)).to eq 1
      end

      it '16=10000' do
        n = 16
        expect(binary_gap(n)).to eq 0
      end

      it '1024=10000000000' do
        n = 1024
        expect(binary_gap(n)).to eq 0
      end
    end

    context 'simple1' do
      it '9=1001' do
        n = 9
        expect(binary_gap(n)).to eq 2
      end

      it '11=1011' do
        n = 11
        expect(binary_gap(n)).to eq 1
      end
    end

    context 'simple2' do
      it '19=10011' do
        n = 19
        expect(binary_gap(n)).to eq 2
      end

      it '42=101010' do
        n = 42
        expect(binary_gap(n)).to eq 1
      end
    end

    context 'simple3' do
      it '1162=10010001010' do
        n = 1162
        expect(binary_gap(n)).to eq 3
      end

      it '5=101' do
        n = 5
        expect(binary_gap(n)).to eq 1
      end
    end

    context 'medium1' do
      it '51712=110010100000000' do
        n = 51712
        expect(binary_gap(n)).to eq 2
      end

      it '20=10100' do
        n = 20
        expect(binary_gap(n)).to eq 1
      end
    end

    context 'medium2' do
      it '561892=10001001001011100100' do
        n = 561892
        expect(binary_gap(n)).to eq 3
      end

      it '9=1001' do
        n = 9
        expect(binary_gap(n)).to eq 2
      end
    end

    context 'medium3' do
      it '66561=10000010000000001' do
        n = 66561
        expect(binary_gap(n)).to eq 9
      end
    end

    context 'large1' do
      it '6291457=11000000000000000000001' do
        n = 6291457
        expect(binary_gap(n)).to eq 20
      end
    end

    context 'large2' do
      it '74901729=100011101101110100011100001' do
        n = 74901729
        expect(binary_gap(n)).to eq 4
      end
    end

    context 'large3' do
      it '805306373=110000000000000000000000000101' do
        n = 805306373
        expect(binary_gap(n)).to eq 25
      end
    end

    context 'large4' do
      it '1376796946=1010010000100000100000100010010' do
        n = 1376796946
        expect(binary_gap(n)).to eq 5
      end
    end

    context 'large5' do
      it '1073741825=1000000000000000000000000000001' do
        n = 1073741825
        expect(binary_gap(n)).to eq 29
      end
    end

    context 'large6' do
      it '1610612737=1100000000000000000000000000001' do
        n = 1610612737
        expect(binary_gap(n)).to eq 28
      end
    end
  end
end
