require "./lib/Lesson 10 Prime And Composite Numbers/CountFactors/count_factors"

describe 'CountFactors' do

  describe 'Example Tests' do
    it 'Example: 24 to 8' do
      expect(count_factors(24)).to eq 8
    end
  end

  describe 'Correctness Tests' do
    context 'Squares' do
      it 'N=16 to 5' do
        expect(count_factors(16)).to eq 5
      end

      it 'N=36 to 9' do
        expect(count_factors(36)).to eq 9
      end
    end

    context 'Tiny' do
      it 'N=1 to 1' do
        expect(count_factors(1)).to eq 1
      end

      it 'N=2 to 2' do
        expect(count_factors(2)).to eq 2
      end

      it 'N=3 to 2' do
        expect(count_factors(3)).to eq 2
      end

      it 'N=4 to 3' do
        expect(count_factors(4)).to eq 3
      end

      it 'N=5 to 2' do
        expect(count_factors(5)).to eq 2
      end

      it 'N=6 to 4' do
        expect(count_factors(6)).to eq 4
      end

      it 'N=7 to 2' do
        expect(count_factors(7)).to eq 2
      end

      it 'N=8 to 4' do
        expect(count_factors(8)).to eq 4
      end

      it 'N=9 to 3' do
        expect(count_factors(9)).to eq 3
      end

      it 'N=10 to 4' do
        expect(count_factors(10)).to eq 4
      end
    end

    context 'Simple1' do
      it 'N=41 (Prime) to 2' do
        expect(count_factors(41)).to eq 2
      end

      it 'N=42 to 8' do
        expect(count_factors(42)).to eq 8
      end
    end

    context 'Simple2' do
      it 'N=69 to 4' do
        expect(count_factors(69)).to eq 4
      end

      it 'N=64 to 7' do
        expect(count_factors(64)).to eq 7
      end

      it 'N=120=5! to 16' do
        expect(count_factors(120)).to eq 16
      end
    end

    context 'Simple3' do
      it 'N=720=6! to 30' do
        expect(count_factors(720)).to eq 30
      end

      it 'N=1111 to 4' do
        expect(count_factors(1111)).to eq 4
      end
    end
  end
end
