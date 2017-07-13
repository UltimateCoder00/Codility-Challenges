require 'frog_jump'

describe 'Frog Jump' do
  describe 'Example Tests' do
    it 'example: (10, 85, 30)) to 3' do
      expect(frog_jump(10, 85, 30)).to eq 3
    end
  end

  describe 'Correctness Tests' do
    context 'simple1' do
      it 'example: (10, 100, 10)) to 9' do
        expect(frog_jump(10, 100, 10)).to eq 9
      end
    end

    context 'simple2' do
      it 'example: (5, 75, 10)) to 7' do
        expect(frog_jump(5, 75, 10)).to eq 7
      end
    end

    context 'extreme_position - no jump needed' do
      it 'example: (50, 50, 5)) to 0' do
        expect(frog_jump(50, 50, 5)).to eq 0
      end
    end

    context 'small_extreme_jump - one big jump' do
      it 'example: (50, 500, 1000)) to 1' do
        expect(frog_jump(50, 500, 1000)).to eq 1
      end
    end
  end
end
