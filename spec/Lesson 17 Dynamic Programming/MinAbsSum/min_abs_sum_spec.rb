require "./lib/Lesson 17 Dynamic Programming/MinAbsSum/min_abs_sum"

describe 'MinAbsSum' do

  describe 'Example Test' do
    it 'Example' do
      expect(min_abs_sum([1,5,2,-2])).to eq 0
    end
  end

  describe 'Correctness Test' do
    context 'Simple1' do
      it 'Simple1 1' do
        expect(min_abs_sum([1,5,-2,5,2,3])).to eq 0
      end

      it 'Simple1 2' do
        expect(min_abs_sum([2,2,1])).to eq 1
      end

      it 'Simple1 3' do
        expect(min_abs_sum([3,1])).to eq 2
      end
    end

    context 'Simple2' do
      it 'Simple2 1' do
        expect(min_abs_sum([2,4,1])).to eq 1
      end

      it 'Simple2 2' do
        expect(min_abs_sum([10,1,1,1,1,1,1])).to eq 4
      end
    end

    context 'Simple3' do
      it 'Simple3 1' do
        expect(min_abs_sum([3,3,3,4,5])).to eq 0
      end

      it 'Simple3 2' do
        expect(min_abs_sum([2,2,1])).to eq 1
      end

      it 'Simple3 3' do
        expect(min_abs_sum([7,2])).to eq 5
      end
    end

    context 'Range' do
      it 'Range 2..20' do
        expect(min_abs_sum([2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20])).to eq 1
      end

      it 'Range 10..14' do
        expect(min_abs_sum([10,11,12,13,14])).to eq 6
      end
    end

    context 'Extreme' do
      it 'Empty' do
        expect(min_abs_sum([])).to eq 0
      end

      it 'Single Element' do
        expect(min_abs_sum([7])).to eq 7
      end
    end

    context 'Functional' do
      it 'Small Functional Test 1' do
        expect(min_abs_sum([18,99,-50,100,4,18,99,-50,100,4,18,99,-50,100,4,18,99,-50,100,4])).to eq 0
      end

      it 'Small Functional Test 2' do
        expect(min_abs_sum([-100,3,2,4])).to eq 91
      end

      it 'Small Functional Test 3' do
        expect(min_abs_sum([91,92,93,94,95,96,97])).to eq 82
      end
    end
  end

  describe 'Performance Test' do
    context 'Medium1' do
      it 'Medium Random 1' do
        array = [16, -61, 94, 85, -7, 33, -57, -56, -43, 39, -58, 95, -86, -62,
                  -83, 54, -27, -6, -35, 28, -19, -59, -14, -39, -78, 65, 36,
                  33, 77, -21, -24, -15, -19, 34, -99, -7, 7, -31, -96, 41, -99,
                  13, -70, -94, -64, -87, -70, 37, 46, -28, 31, -5, 0, 76, -38,
                  74, 38, 37, -99, -84, -94, -31, 90, 76, 68, -77, 41, 55, 62,
                  59, -72, -65, 59, 48, 79, -11, 78, -72, 92, 77, -33, -87, 10,
                  38, -30, -89, -44, 65, -82, 88, -50, -59, -78, 97, 81, -36,
                  -81, 31, 78, -98]
        expect(min_abs_sum(array)).to eq 0
      end

      it 'Medium Random 2' do
        expect(min_abs_sum([2,2,1])).to eq 1
      end
    end
  end
end
