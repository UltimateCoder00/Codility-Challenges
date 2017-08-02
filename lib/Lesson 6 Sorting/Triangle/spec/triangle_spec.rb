require 'triangle'

describe 'Triangle' do
  describe 'Example Tests' do
    it 'example: [10, 2, 5, 1, 8, 20] gives 1' do
      expect(triangle([10, 2, 5, 1, 8, 20])).to eq 1
    end

    it 'example: [10, 50, 5, 1] gives 0' do
      expect(triangle([10, 50, 5, 1])).to eq 0
    end
  end
  
  describe 'Correctness Tests' do
    context 'extreme_empty' do
      it 'empty sequence' do

      end
    end

    context 'extreme_single' do
      it '1-element sequence' do

      end
    end

    context 'extreme_two_elems' do
      it '2-element sequence' do

      end
    end

    context 'extreme_negative1' do
      it 'three equal negative numbers' do

      end
    end

    context 'extreme_arith_overflow1' do
      it 'overflow test, 3 MAXINTs' do

      end
    end

    context 'extreme_arith_overflow2' do
      it 'overflow test, 10 and 2 MININTs' do

      end
    end

    context 'extreme_arith_overflow3' do
      it 'overflow test, 0 and 2 MAXINTs' do

      end
    end

    context 'medium1' do
      it 'chaotic sequence of values from [0..100K], length=30' do

      end
    end

    context 'medium2' do
      it 'chaotic sequence of values from [0..1K], length=50' do

      end
    end

    context 'medium3' do
      it 'chaotic sequence of values from [0..1K], length=100' do

      end
    end
  end
end
