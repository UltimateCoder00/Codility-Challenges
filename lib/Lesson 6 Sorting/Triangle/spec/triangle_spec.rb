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
        array1 = [117, 988, 574, 411, 640, 60, 662, 691, 32, 756, 333, 518,
                  688, 152, 69, 725, 26, 507, 155, 845, 613, 340, 712, 839,
                  88, 75, 267, 70, 799, 274, 100, 54, 410, 836, 89, 380, 790,
                  711, 258, 699, 700, 222, 476, 281, 865, 339, 934, 74, 705,
                  368, 580, 618, 69, 7, 341, 673, 180, 135, 648, 803, 785, 764,
                  976, 319, 902, 351, 186, 248, 285, 216, 448, 323, 771, 76, 693,
                  19, 158, 197, 846, 602, 677, 105, 510, 556, 374, 219, 538, 49,
                  392, 735, 203, 86, 528, 609, 488, 662, 824, 620, 590, 206]
        expect(triangle(array1)).to eq 1

        array2 = [788, 908, 392, 105, 353, 134, 641, 669, 249, 266, 981, 399,
                  561, 246, 333, 796, 160, 207, 496, 255, 904, 855, 60, 538,
                  1000, 555, 498, 124, 561, 367, 327, 405, 753, 948, 830, 236,
                  648, 510, 468, 796, 614, 335, 456, 530, 543, 452, 625, 736,
                  770, 864, 981, 101, 491, 807, 723, 904, 590, 283, 214, 123,
                  429, 792, 3, 119, 942, 297, 64, 812, 506, 730, 177, 261, 517,
                  732, 474, 592, 224, 556, 311, 890, 9, 731, 432, 307, 569,
                  155, 691, 917, 680, 407, 997, 346, 216, 330, 869, 165, 804,
                  373, 880, 107]
        expect(triangle(array2)).to eq 1

        array3 = [416, 369, 22, 437, 107, 928, 179, 46, 95, 467, 883, 499,
                  164, 121, 980, 373, 68, 189, 101, 445, 241, 528, 148, 262,
                  323, 787, 796, 422, 597, 387, 262, 55, 383, 438, 82, 318,
                  745, 565, 537, 518, 581, 540, 146, 426, 309, 262, 931, 528,
                  105, 132, 554, 442, 203, 72, 331, 295, 119, 177, 801, 663,
                  903, 85, 214, 830, 857, 529, 933, 126, 192, 306, 599, 765,
                  457, 636, 907, 354, 207, 879, 891, 53, 837, 742, 947, 995,
                  319, 649, 145, 772, 256, 147, 608, 442, 899, 413, 786, 468,
                  616, 399, 617, 931]
        expect(triangle(array3)).to eq 1

        array4 = [409, 651, 726, 624, 651, 60, 740, 48, 216, 497, 499, 414, 396,
                  770, 47, 128, 77, 897, 803, 326, 99, 827, 876, 937, 38, 150,
                  172, 366, 492, 213, 259, 974, 628, 437, 799, 782, 132, 154,
                  820, 706, 578, 420, 987, 954, 590, 456, 477, 577, 297, 768, 977,
                  808, 765, 850, 676, 542, 622, 125, 480, 575, 918, 241, 26, 409,
                  126, 884, 796, 452, 938, 934, 6, 10, 576, 996, 987, 858, 938,
                  362, 73, 468, 910, 319, 610, 69, 520, 834, 492, 372, 238, 408,
                  778, 419, 826, 467, 573, 505, 776, 974, 315, 961]
        expect(triangle(array4)).to eq 1

        array5 = [296, 172, 995, 603, 708, 586, 301, 229, 482, 363, 467, 481, 602,
                  369, 264, 162, 696, 855, 846, 146, 488, 247, 53, 76, 165, 579,
                  287, 999, 866, 608, 453, 286, 449, 78, 596, 839, 516, 397, 718,
                  415, 998, 720, 401, 284, 602, 809, 111, 985, 286, 777, 476, 461,
                  699, 589, 596, 907, 314, 264, 527, 844, 442, 698, 354, 132, 848,
                  604, 224, 796, 395, 942, 584, 614, 298, 548, 950, 809, 676, 752,
                  1, 705, 549, 990, 139, 180, 834, 760, 746, 240, 81, 741, 674, 658,
                  644, 419, 242, 548, 616, 999, 770, 898]
        expect(triangle(array5)).to eq 1

        array6 = [186, 454, 300, 558, 372, 852, 148, 753, 811, 107, 683, 169, 338,
                  827, 507, 647, 87, 846, 482, 306, 379, 811, 733, 991, 633, 429,
                  638, 300, 913, 498, 507, 239, 827, 457, 932, 678, 209, 285, 842,
                  799, 306, 110, 252, 498, 478, 314, 100, 516, 709, 300, 157, 221,
                  848, 426, 342, 351, 101, 347, 545, 155, 383, 749, 626, 537, 244,
                  466, 332, 289, 871, 332, 702, 62, 911, 226, 597, 163, 522, 887, 946,
                  33, 679, 641, 527, 109, 147, 632, 24, 332, 345, 267, 127, 580, 125,
                  484, 368, 10, 488, 25, 216, 446]
        expect(triangle(array6)).to eq 1
      end
    end
  end

  describe 'Performance Tests' do
    context 'large1' do
      it 'chaotic sequence with values from [0..100K], length=10K' do
        array1 = Array.new(10000) { rand(0..100000) }
        expect(triangle(array1)).to be_a Integer

        array2 = Array.new(10000) { rand(0..100000) }
        expect(triangle(array2)).to be_a Integer

        array3 = Array.new(10000) { rand(0..100000) }
        expect(triangle(array3)).to be_a Integer

        array4 = Array.new(10000) { rand(0..100000) }
        expect(triangle(array4)).to be_a Integer

        array5 = Array.new(10000) { rand(0..100000) }
        expect(triangle(array5)).to be_a Integer

        array6 = Array.new(10000) { rand(0..100000) }
        expect(triangle(array6)).to be_a Integer
      end
    end

    context 'large2' do
      it '1 followed by an ascending sequence of ~50K elements from [0..100K], length=~50K' do
        array1 = [*1..50000]
        expect(triangle(array1)).to be_a Integer

        array2 = [1] + [*3..49998]
        expect(triangle(array2)).to be_a Integer

        array3 = [1] + [*10..50009]
        expect(triangle(array3)).to be_a Integer

        array4 = [1] + [*100..50099]
        expect(triangle(array4)).to be_a Integer

        array5 = [1] + [*50000..99999]
        expect(triangle(array5)).to be_a Integer

        array6 = [1] + [*25000..74999]
        expect(triangle(array6)).to be_a Integer
      end
    end

    context 'large_random' do
      it 'chaotic sequence of values from [0..1M], length=100K' do

      end
    end

    context 'large_negative' do
      it 'chaotic sequence of negative values from [-1M..-1], length=100K' do

      end
    end

    context 'large_negative2' do
      it 'chaotic sequence of negative values from [-10..-1], length=100K' do

      end
    end

    context 'large_negative3' do
      it 'sequence of -1 value, length=100K' do

      end
    end
  end
end
