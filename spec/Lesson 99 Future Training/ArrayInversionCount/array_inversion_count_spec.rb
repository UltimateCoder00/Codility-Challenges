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

    context 'Medium2' do
      it 'n=200' do
        array = [584, 664, 64, 805, 386, 706, 182, 800, 635, 670, 512, 914, 215,
                  338, 287, 716, 228, 663, 817, 949, 161, 304, 727, 314, 904,
                  226, 794, 645, 114, 326, 887, 980, 343, 913, 517, 393, 665,
                  304, 780, 790, 719, 587, 428, 924, 48, 275, 586, 825, 135,
                  383, 839, 189, 789, 187, 503, 937, 255, 547, 860, 576, 455,
                  248, 597, 552, 488, 284, 272, 826, 1000, 87, 85, 367, 750,
                  505, 517, 750, 902, 217, 64, 179, 479, 328, 162, 956, 711,
                  289, 12, 786, 594, 858, 276, 496, 357, 144, 705, 407, 873,
                  606, 285, 850, 147, 133, 9, 344, 567, 639, 540, 296, 312, 249,
                  300, 504, 307, 795, 970, 522, 188, 995, 762, 480, 713, 838,
                  43, 117, 78, 102, 945, 875, 730, 887, 321, 145, 925, 800, 733,
                  960, 609, 113, 1000, 375, 408, 11, 787, 568, 652, 596, 832,
                  623, 145, 450, 993, 991, 716, 5, 887, 883, 23, 530, 661, 106,
                  345, 529, 147, 812, 300, 824, 877, 33, 575, 222, 449, 858,
                  413, 34, 559, 984, 74, 609, 960, 164, 246, 460, 655, 1000,
                  223, 735, 972, 932, 217, 109, 363, 545, 367, 794, 742, 592,
                  800, 926, 754, 113]
        expect(array_inversion_count(array)).to eq 9799
      end
    end
  end

  describe 'Performance Tests' do
    context 'Medium3' do
      it 'n=1000' do
        array = Array.new(1000) { rand(0..1000) }
        expect(array_inversion_count(array)).to be_a Integer
      end
    end

    context 'Big1' do
      it 'n=10000' do
        array = Array.new(10000) { rand(0..99986) }
        expect(array_inversion_count(array)).to be_a Integer
      end
    end

    context 'Big2' do
      it 'n=20000' do
        array = Array.new(20000) { rand(0..100000) }
        expect(array_inversion_count(array)).to be_a Integer
      end
    end

    context 'Big3' do
      it 'n=30000' do
        array = Array.new(30000) { rand(2..99994) }
        expect(array_inversion_count(array)).to be_a Integer
      end
    end
  end
end
