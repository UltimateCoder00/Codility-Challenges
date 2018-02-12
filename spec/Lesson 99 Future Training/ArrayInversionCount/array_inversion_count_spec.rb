require "./lib/Lesson 99 Future Training/ArrayInversionCount/array_inversion_count"

describe 'ArrayInversionCount' do

  describe 'Example Test' do
    it 'Example' do
      expect(array_inversion_count([-1,6,3,4,7,4])).to eq 4
    end
  end

  describe 'Correctness Tests' do
    context 'Simple1' do
      it 'Simple' do
        expect(array_inversion_count([5,4,3,2,1])).to eq 10
      end
    end

    context 'Simple2' do
      it 'Simple' do
        expect(array_inversion_count([10,2,1,4,1,-1,19,1])).to eq 16
      end
    end

    context 'Simple3' do
      it 'Simple' do
        array = [181,1,1,2,4,1,1,4,6,1,2]
        expect(array_inversion_count(array)).to eq 21
      end
    end

    context 'Extreme_0_inv' do
      it '[0]' do
        array = [0]
        expect(array_inversion_count(array)).to eq 0
      end

      it '[]' do
        array = []
        expect(array_inversion_count(array)).to eq 0
      end

      it '[1,2,3]' do
        array = [1,2,3]
        expect(array_inversion_count(array)).to eq 0
      end

      it '[1,1,1]' do
        array = [1,1,1]
        expect(array_inversion_count(array)).to eq 0
      end
    end

    context 'Medium1' do
      it 'n=100' do
        array = [968, 778, 925, 787, 1, 428, 157, 530, 200, 543, 355, 832, 396,
                  753, 638, 713, 985, 376, 167, 656, 831, 466, 183, 616, 748,
                  968, 861, 512, 366, 948, 791, 432, 923, 530, 977, 89, 526,
                  586, 628, 44, 696, 643, 473, 423, 590, 584, 55, 549, 304, 256,
                  989, 721, 958, 227, 260, 612, 549, 236, 28, 394, 685, 250, 207,
                  154, 449, 76, 937, 339, 424, 232, 586, 101, 785, 664, 295, 333,
                  675, 294, 156, 490, 85, 364, 507, 954, 741, 56, 235, 517, 71,
                  853, 221, 751, 381, 229, 598, 517, 694, 18, 130, 369]
        expect(array_inversion_count(array)).to eq 2922
      end
    end
  end
end
