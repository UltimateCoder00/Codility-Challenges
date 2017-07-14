require 'tape_equilibrium'

  describe 'Tape Equilibrium' do
    describe 'Example Tests' do
      it 'example: [3, 1, 2, 4, 3] to 1' do
        expect(tape_equilibrium([3, 1, 2, 4, 3])).to eq 1
      end
    end

  describe 'Correctness Tests' do
    context 'double - two elements' do
      it '[3, 1] to 2' do
        expect(tape_equilibrium([3, 1])).to eq 2
      end

      it '[4, 10] to 6' do
        expect(tape_equilibrium([4, 10])).to eq 6
      end
    end

    context 'simple_positive - simple test with positive numbers, length = 5' do
      it '[10, 8, 6, 4, 3] to 5' do
        expect(tape_equilibrium([10, 8, 6, 4, 3])).to eq 5
      end
    end

    context 'simple_negative - simple test with negative numbers, length = 5' do
      it '[-10, -8, -6, -4, -3] to 5' do
        expect(tape_equilibrium([-10, -8, -6, -4, -3])).to eq 5
      end
    end

    context 'small_random - random small, length = 100' do
      it '[120, 20] to 100' do
        expect(tape_equilibrium([120, 20])).to eq 100
      end
    end

    context 'small_range - range sequence, length = ~1,000' do
      it '[1200, 1000, 100] to 100' do
        expect(tape_equilibrium([1200, 1000, 100])).to eq 100
      end
    end

    context 'small - small elements' do
      it '[20, 15, 3, 16, 78, 100] to 32' do
        expect(tape_equilibrium([20, 15, 3, 16, 78, 100])).to eq 32
      end
    end
  end

  describe 'Performance Tests' do
    context 'medium_random1 - random medium, numbers from 0 to 100, length = ~10,000' do

    end

    context 'medium_random2 - random medium, numbers from -1,000 to 50, length = ~10,000' do

    end

    context 'large_ones - large sequence, numbers from -1 to 1, length = ~100,000' do

    end

    context 'large_random - random large, length = ~100,000' do

    end

    context 'large_sequence - large sequence, length = ~100,000' do

    end

    context 'large_extreme - large test with maximal and minimal values, length = ~100,000' do

    end
  end
end
