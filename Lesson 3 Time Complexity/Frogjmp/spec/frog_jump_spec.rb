require 'frog_jump'

describe 'Frog Jump' do
  describe 'Example Tests' do
    it 'example: (10, 85, 30)) to 3' do
      expect(frog_jump(10, 85, 30)).to eq 3
    end
  end

  describe 'Correctness Tests' do
    context 'simple1' do
      it '(10, 100, 10)) to 9' do
        expect(frog_jump(10, 100, 10)).to eq 9
      end
    end

    context 'simple2' do
      it '(5, 75, 10)) to 7' do
        expect(frog_jump(5, 75, 10)).to eq 7
      end
    end

    context 'extreme_position - no jump needed' do
      it '(50, 50, 5)) to 0' do
        expect(frog_jump(50, 50, 5)).to eq 0
      end
    end

    context 'small_extreme_jump - one big jump' do
      it '(50, 500, 1000)) to 1' do
        expect(frog_jump(50, 500, 1000)).to eq 1
      end
    end
  end

  describe 'allPerformance Tests' do
    context 'many_jump1 - many jumps, D = 2' do
      it '(25, 500, 2)) to 238' do
        expect(frog_jump(25, 500, 2)).to eq 238
      end
    end

    context 'many_jump2 - many jumps, D = 99' do
      it '(1095, 500000000, 99)) to 5050494' do
        expect(frog_jump(1095, 500000000, 99)).to eq 5050494
      end
    end

    context 'many_jump3 - many jumps, D = 1283' do
      it '(24567, 342534000, 1283)) to 266960' do
        expect(frog_jump(24567, 342534000, 1283)).to eq 266960
      end
    end

    context 'big_extreme_jump - maximal number of jumps' do
      it '(1, 1000000000, 1)) to 999999999' do
        expect(frog_jump(1, 1000000000, 1)).to eq 999999999
      end
    end

    context 'small_jumps - many small jumps' do
      it '(1, 1000000000, 5)) to 1000000000' do
        expect(frog_jump(1, 1000000000, 5)).to eq 200000000
      end
    end
  end
end
