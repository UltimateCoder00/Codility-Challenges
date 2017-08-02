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
        expect(triangle([])).to eq 0
      end
    end

    context 'extreme_single' do
      it '1-element sequence' do
        expect(triangle([1])).to eq 0
        expect(triangle([2])).to eq 0
        expect(triangle([3])).to eq 0
        expect(triangle([4])).to eq 0
        expect(triangle([5])).to eq 0
        expect(triangle([6])).to eq 0
      end
    end

    context 'extreme_two_elems' do
      it '2-element sequence' do
        expect(triangle([1, 2])).to eq 0
        expect(triangle([2, 3])).to eq 0
        expect(triangle([3, 4])).to eq 0
        expect(triangle([4, 5])).to eq 0
        expect(triangle([5, 6])).to eq 0
        expect(triangle([6, 7])).to eq 0
      end
    end

    context 'extreme_negative1' do
      it 'three equal negative numbers' do
        expect(triangle([-1, -1, -1])).to eq 0
        expect(triangle([-2, -2, -2])).to eq 0
        expect(triangle([-3, -3, -3])).to eq 0
        expect(triangle([-4, -4, -4])).to eq 0
        expect(triangle([-5, -5, -5])).to eq 0
        expect(triangle([-6, -6, -6])).to eq 0
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
        array1 = [81325, 89780, 22151, 19576, 7373, 84872, 37488, 85521,
                  16269, 15195, 7277, 69799, 8842, 30044, 91772, 72301,
                  22409, 41739, 12339, 7067, 138, 99082, 54036, 37754,
                  44888, 40464, 46595, 54756, 50427, 50198]
        expect(triangle(array1)).to eq 1

        array2 = [30255, 26738, 98296, 25149, 16384, 14313, 12515, 11556,
                  13984, 45175, 53609, 85833, 84376, 63143, 12396, 52849,
                  45282, 64467, 24300, 29402, 83870, 38854, 56842, 74481,
                  39836, 1536, 76350, 52585, 66796, 63034]
        expect(triangle(array2)).to eq 1

        array3 = [19354, 42470, 2471, 57084, 4747, 43521, 19535, 92536,
                  13097, 20552, 28912, 18934, 61159, 51010, 96731, 93135,
                  4717, 84662, 52515, 76196, 83177, 23167, 13576, 55477,
                  83444, 20263, 8490, 35113, 21034, 31364]
        expect(triangle(array3)).to eq 1

        array4 = [57246, 16372, 76620, 15808, 62465, 16128, 96688, 59580,
                  64011, 45483, 10919, 27866, 58583, 20936, 77382, 35378,
                  54360, 39073, 39745, 31011, 14317, 59792, 68753, 83447,
                  53929, 93302, 55049, 94590, 57451, 33998]
        expect(triangle(array4)).to eq 1

        array5 = [42566, 40116, 58649, 38241, 12611, 68421, 19474, 78863,
                  59178, 49211, 47832, 52233, 85267, 98526, 663, 72426,
                  32956, 50636, 87506, 32731, 84221, 89134, 49801, 6338,
                  82343, 46786, 78520, 92419, 63589, 61405]
        expect(triangle(array5)).to eq 1

        array6 = [19063, 79625, 39899, 23412, 77100, 69088, 42664, 49339,
                  58085, 20551, 8705, 86751, 78344, 99674, 66106, 53271,
                  79415, 8331, 91687, 30164, 58060, 50121, 48197, 85163,
                  29972, 76301, 19698, 62602, 25538, 35964]
        expect(triangle(array6)).to eq 1
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
