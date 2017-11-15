require "./lib/Lesson 1 Iterations/BinaryGap/binary_gap"

describe 'BinaryGap' do

  describe 'Example Tests' do
    context 'Example1' do
      it 'N=1041=10000010001_2' do
        expect(binary_gap(1041)).to eq 5
      end
    end

    context 'Example2' do
      it 'N=15=1111_2' do
        expect(binary_gap(15)).to eq 0
      end
    end
  end

  describe 'Correctness Tests' do
    context 'Extremes' do
      it 'N=1=1_2' do
        expect(binary_gap(1)).to eq 0
      end

      it 'N=5=101_2' do
        expect(binary_gap(5)).to eq 1
      end

      it 'N=2147483647=1111111111111111111111111111111_2=2**31-1' do
        expect(binary_gap(2147483647)).to eq 0
      end
    end

    context 'Trailing_zeroes' do
      it 'N=6=110_2' do
        expect(binary_gap(6)).to eq 0
      end

      it 'N=328=101001000_2' do
        expect(binary_gap(328)).to eq 2
      end
    end

    context 'Power_of_2' do
      it 'N=5=101_2' do
        expect(binary_gap(5)).to eq 1
      end

      it 'N=16=10000_2=2**4' do
        expect(binary_gap(16)).to eq 0
      end

      it 'N=1024=10000000000_2=2**10' do
        expect(binary_gap(1024)).to eq 0
      end
    end

    context 'Simple1' do
      it 'N=9=1001_2' do
        expect(binary_gap(9)).to eq 2
      end

      it 'N=11=1011_2' do
        expect(binary_gap(11)).to eq 1
      end
    end

    context 'Simple2' do
      it 'N=19=10011_2' do
        expect(binary_gap(19)).to eq 2
      end

      it 'N=42=101010_2' do
        expect(binary_gap(42)).to eq 1
      end
    end

    context 'Simple3' do
      it 'N=1162=10010001010_2' do
        expect(binary_gap(1162)).to eq 3
      end

      it 'N=5=101_2' do
        expect(binary_gap(5)).to eq 1
      end
    end

    context 'Medium1' do
      it 'N=51712=110010100000000_2' do
        expect(binary_gap(51712)).to eq 2
      end

      it 'N=20=10100_2' do
        expect(binary_gap(20)).to eq 1
      end
    end

    context 'Medium2' do
      it 'N=561892=10001001001011100100_2' do
        expect(binary_gap(561892)).to eq 3
      end

      it 'N=9=1001_2' do
        expect(binary_gap(9)).to eq 2
      end
    end

    context 'Medium3' do
      it 'N=66561=10000010000000001_2' do
        expect(binary_gap(66561)).to eq 9
      end
    end

    context 'Large1' do
      it 'N=6291457=11000000000000000000001_2' do
        expect(binary_gap(6291457)).to eq 20
      end
    end

    context 'Large2' do
      it 'N=74901729=100011101101110100011100001_2' do
        expect(binary_gap(74901729)).to eq 4
      end
    end

    context 'Large3' do
      it 'N=805306373=110000000000000000000000000101_2' do
        expect(binary_gap(805306373)).to eq 25
      end
    end

    context 'Large4' do
      it 'N=1376796946=1010010000100000100000100010010_2' do
        expect(binary_gap(1376796946)).to eq 5
      end
    end

    context 'Large5' do
      it 'N=1073741825=1000000000000000000000000000001' do
        expect(binary_gap(1073741825)).to eq 29
      end
    end

    context 'Large6' do
      it 'N=1610612737=1100000000000000000000000000001_2' do
        expect(binary_gap(1610612737)).to eq 28
      end
    end
  end
end
