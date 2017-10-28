require "./lib/Lesson 1 Iterations/BinaryGap/binary_gap"

describe 'BinaryGap' do

  describe 'Example Tests' do
    it 'Example1: 1041=10000010001 to 5' do
      expect(binary_gap(1041)).to eq 5
    end

    it 'Example2: 15=1111 to 0' do
      expect(binary_gap(15)).to eq 0
    end
  end

  describe 'Correctness Tests' do

    context 'Extremes' do
      it '1=1 to 0' do
        expect(binary_gap(1)).to eq 0
      end

      it '5=101 to 1' do
        expect(binary_gap(5)).to eq 1
      end

      it '2147483647=1111111111111111111111111111111 to 0' do
        expect(binary_gap(2147483647)).to eq 0
      end
    end

    context 'Trailing_zeroes' do
      it '6=110 to 0' do
        expect(binary_gap(6)).to eq 0
      end

      it '328=101001000 to 2' do
        expect(binary_gap(328)).to eq 2
      end
    end

    context 'Power_of_2' do
      it '5=101 to 1' do
        expect(binary_gap(5)).to eq 1
      end

      it '16=10000 to 0' do
        expect(binary_gap(16)).to eq 0
      end

      it '1024=10000000000 to 0' do
        expect(binary_gap(1024)).to eq 0
      end
    end

    context 'Simple1' do
      it '9=1001 to 2' do
        expect(binary_gap(9)).to eq 2
      end

      it '11=1011 to 1' do
        expect(binary_gap(11)).to eq 1
      end
    end

    context 'Simple2' do
      it '19=10011 to 2' do
        expect(binary_gap(19)).to eq 2
      end

      it '42=101010 to 1' do
        expect(binary_gap(42)).to eq 1
      end
    end

    context 'Simple3' do
      it '1162=10010001010 to 3' do
        expect(binary_gap(1162)).to eq 3
      end

      it '5=101 to 1' do
        expect(binary_gap(5)).to eq 1
      end
    end

    context 'Medium1' do
      it '51712=110010100000000 to 2' do
        expect(binary_gap(51712)).to eq 2
      end

      it '20=10100 to 1' do
        expect(binary_gap(20)).to eq 1
      end
    end

    context 'Medium2' do
      it '561892=10001001001011100100 to 3' do
        expect(binary_gap(561892)).to eq 3
      end

      it '9=1001 to 2' do
        expect(binary_gap(9)).to eq 2
      end
    end

    context 'Medium3' do
      it '66561=10000010000000001 to 9' do
        expect(binary_gap(66561)).to eq 9
      end
    end

    context 'Large1' do
      it '6291457=11000000000000000000001 to 20' do
        expect(binary_gap(6291457)).to eq 20
      end
    end

    context 'Large2' do
      it '74901729=100011101101110100011100001 to 4' do
        expect(binary_gap(74901729)).to eq 4
      end
    end

    context 'Large3' do
      it '805306373=110000000000000000000000000101 to 25' do
        expect(binary_gap(805306373)).to eq 25
      end
    end

    context 'Large4' do
      it '1376796946=1010010000100000100000100010010 to 5' do
        expect(binary_gap(1376796946)).to eq 5
      end
    end

    context 'Large5' do
      it '1073741825=1000000000000000000000000000001 to 29' do
        expect(binary_gap(1073741825)).to eq 29
      end
    end

    context 'Large6' do
      it '1610612737=1100000000000000000000000000001 to 28' do
        expect(binary_gap(1610612737)).to eq 28
      end
    end
  end
end
