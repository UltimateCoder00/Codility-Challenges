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

    end

    context 'small_random - random small, length = 100' do

    end

    context 'small_range - range sequence, length = ~1,000' do

    end

    context 'small - small elements' do

    end
  end
end
