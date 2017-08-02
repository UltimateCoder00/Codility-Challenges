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
          array1 = [268, 424, 187, 625, 107, 500, 221, 827, 588, 597, 131,
                    346, 146, 652, 479, 946, 918, 132, 141, 544, 307, 960,
                    815, 889, 114, 237, 907, 23, 914, 461, 831, 158, 487,
                    629, 628, 848, 46, 257, 192, 353, 875, 761, 755, 994,
                    215, 75, 934, 187, 375, 816]
          expect(triangle(array1)).to eq 1

          array2 = [565, 491, 873, 247, 426, 336, 166, 782, 131, 993, 199,
                    227, 684, 364, 988, 276, 148, 32, 86, 26, 390, 429, 978,
                    119, 757, 942, 337, 304, 445, 493, 565, 1000, 304, 548,
                    597, 371, 38, 208, 609, 952, 472, 225, 213, 398, 595, 357,
                    740, 661, 686, 416]
          expect(triangle(array2)).to eq 1

          array3 = [26, 469, 546, 539, 373, 107, 242, 203, 250, 740, 144, 203,
                    66, 786, 257, 866, 751, 333, 34, 135, 106, 211, 137, 16,
                    410, 262, 985, 374, 206, 628, 808, 714, 968, 213, 680, 729,
                    754, 278, 325, 143, 66, 418, 208, 156, 878, 363, 323, 761,
                    464, 877]
          expect(triangle(array3)).to eq 1

          array4 = [909, 346, 610, 75, 762, 127, 52, 776, 959, 893, 296, 317,
                    92, 332, 696, 556, 495, 765, 860, 256, 44, 718, 283, 792,
                    219, 223, 985, 98, 755, 711, 356, 377, 514, 223, 998, 951,
                    577, 178, 7, 16, 159, 976, 362, 274, 49, 696, 367, 476,
                    550, 862]
          expect(triangle(array4)).to eq 1

          array5 = [315, 549, 276, 231, 847, 707, 908, 638, 268, 592, 339, 669,
                    948, 551, 29, 229, 784, 532, 54, 578, 331, 301, 529, 24,
                    724, 523, 971, 811, 37, 105, 635, 949, 792, 108, 560, 22,
                    239, 176, 576, 493, 981, 48, 783, 373, 80, 290, 844, 226,
                    782, 481]
          expect(triangle(array5)).to eq 1

          array6 = [638, 552, 250, 500, 798, 149, 34, 684, 909, 862, 138, 826,
                    481, 116, 500, 506, 376, 623, 234, 439, 256, 713, 569, 621,
                    217, 297, 315, 985, 761, 202, 12, 186, 630, 415, 181, 744,
                    316, 705, 188, 635, 304, 547, 95, 266, 983, 794, 339, 959,
                    34, 936]
          expect(triangle(array6)).to eq 1
      end
    end

    context 'medium3' do
      it 'chaotic sequence of values from [0..1K], length=100' do

      end
    end
  end
end
