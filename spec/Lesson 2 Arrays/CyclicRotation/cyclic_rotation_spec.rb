require "./lib/Lesson 2 Arrays/CyclicRotation/cyclic_rotation"

describe 'CyclicRotation' do
  describe 'Example Tests' do
    context 'Example' do
      it 'First Example Test' do
        array = [3, 8, 9, 7, 6]
        k = 3
        expect(cyclic_rotation(array, k)).to eq [9, 7, 6, 3, 8]
      end
    end

    context 'Example2' do
      it 'Third Example Test' do
        array = [0, 0, 0]
        k = 1
        expect(cyclic_rotation(array, k)).to eq [0, 0, 0]
      end
    end

    context 'Example3' do
      it 'Second Example Test' do
        array = [1, 2, 3, 4]
        k = 4
        expect(cyclic_rotation(array, k)).to eq [0, 0, 0]
      end
    end
  end

  describe 'Correctness Tests' do
    context 'Extreme_empty' do
      it 'Empty Array 1' do
        array = []
        k = 0
        expect(cyclic_rotation(array, k)).to eq []
      end

      it 'Empty Array 2' do
        array = []
        k = 5
        expect(cyclic_rotation(array, k)).to eq []
      end
    end

    context 'Single' do
      context 'One Element, 0 <= K <= 5' do
        it 'K=4' do
          array = [1]
          k = 4
          expect(cyclic_rotation(array, k)).to eq [1]
        end

        it 'K=2' do
          array = [3]
          k = 2
          expect(cyclic_rotation(array, k)).to eq [3]
        end

        it 'K=1' do
          array = [5]
          k = 1
          expect(cyclic_rotation(array, k)).to eq [5]
        end
      end
    end

    context 'Double' do
      context 'Two Elements, K <= N' do
        it 'N=2, K=1' do
          array = [4,67]
          k = 1
          expect(cyclic_rotation(array, k)).to eq [67,4]
        end

        it 'N=2, K=2' do
          array = [2,6]
          k = 2
          expect(cyclic_rotation(array, k)).to eq [2,6]
        end
      end
    end

    context 'Small1' do
      context 'Small Functional Tests, K < N' do
        it 'N=5, K=3' do
          array = [1,2,3,4,5]
          k = 3
          expect(cyclic_rotation(array, k)).to eq [3,4,5,1,2]
        end

        it 'N=4, K=3' do
          array = [34,21,23,54]
          k = 3
          expect(cyclic_rotation(array, k)).to eq [21,23,54,34]
        end
      end
    end

    context 'Small2' do
      context 'Small Functional Tests, K >= N' do
        it 'N=5, K=5' do
          array = [1,2,3,4,5]
          k = 5
          expect(cyclic_rotation(array, k)).to eq [1,2,3,4,5]
        end

        it 'N=4, K=10' do
          array = [34,21,23,54]
          k = 10
          expect(cyclic_rotation(array, k)).to eq [23,54,34,21]
        end

        it 'N=4, K=6' do
          array = [1,13,9,5]
          k = 6
          expect(cyclic_rotation(array, k)).to eq [9,5,1,13]
        end
      end
    end

    context 'Small_random_all_rotations' do
      context 'Small Random Sequence, All Rotations, N = 15' do
        it 'K=0' do
          array = [4, 6, 0, 0, -2, 10, -4, -7, -5, -5, -4, -5, -8, -4, -4]
          k = 0

          rotated_array = array.dup
          k.times do
            rotated_array.unshift(rotated_array[-1])
            rotated_array.pop
          end

          expect(cyclic_rotation(array, k)).to eq rotated_array
        end

        it 'K=1' do
          array = [4, 6, 0, 0, -2, 10, -4, -7, -5, -5, -4, -5, -8, -4, -4]
          k = 1

          rotated_array = array.dup
          k.times do
            rotated_array.unshift(rotated_array[-1])
            rotated_array.pop
          end

          expect(cyclic_rotation(array, k)).to eq rotated_array
        end

        it 'K=2' do
          array = [4, 6, 0, 0, -2, 10, -4, -7, -5, -5, -4, -5, -8, -4, -4]
          k = 2

          rotated_array = array.dup
          k.times do
            rotated_array.unshift(rotated_array[-1])
            rotated_array.pop
          end

          expect(cyclic_rotation(array, k)).to eq rotated_array
        end

        it 'K=3' do
          array = [4, 6, 0, 0, -2, 10, -4, -7, -5, -5, -4, -5, -8, -4, -4]
          k = 3

          rotated_array = array.dup
          k.times do
            rotated_array.unshift(rotated_array[-1])
            rotated_array.pop
          end

          expect(cyclic_rotation(array, k)).to eq rotated_array
        end

        it 'K=4' do
          array = [4, 6, 0, 0, -2, 10, -4, -7, -5, -5, -4, -5, -8, -4, -4]
          k = 4

          rotated_array = array.dup
          k.times do
            rotated_array.unshift(rotated_array[-1])
            rotated_array.pop
          end

          expect(cyclic_rotation(array, k)).to eq rotated_array
        end

        it 'K=5' do
          array = [4, 6, 0, 0, -2, 10, -4, -7, -5, -5, -4, -5, -8, -4, -4]
          k = 5

          rotated_array = array.dup
          k.times do
            rotated_array.unshift(rotated_array[-1])
            rotated_array.pop
          end

          expect(cyclic_rotation(array, k)).to eq rotated_array
        end

        it 'K=6' do
          array = [4, 6, 0, 0, -2, 10, -4, -7, -5, -5, -4, -5, -8, -4, -4]
          k = 6

          rotated_array = array.dup
          k.times do
            rotated_array.unshift(rotated_array[-1])
            rotated_array.pop
          end

          expect(cyclic_rotation(array, k)).to eq rotated_array
        end

        it 'K=7' do
          array = [4, 6, 0, 0, -2, 10, -4, -7, -5, -5, -4, -5, -8, -4, -4]
          k = 7

          rotated_array = array.dup
          k.times do
            rotated_array.unshift(rotated_array[-1])
            rotated_array.pop
          end

          expect(cyclic_rotation(array, k)).to eq rotated_array
        end

        it 'K=8' do
          array = [4, 6, 0, 0, -2, 10, -4, -7, -5, -5, -4, -5, -8, -4, -4]
          k = 8

          rotated_array = array.dup
          k.times do
            rotated_array.unshift(rotated_array[-1])
            rotated_array.pop
          end

          expect(cyclic_rotation(array, k)).to eq rotated_array
        end

        it 'K=9' do
          array = [4, 6, 0, 0, -2, 10, -4, -7, -5, -5, -4, -5, -8, -4, -4]
          k = 9

          rotated_array = array.dup
          k.times do
            rotated_array.unshift(rotated_array[-1])
            rotated_array.pop
          end

          expect(cyclic_rotation(array, k)).to eq rotated_array
        end

        it 'K=10' do
          array = [4, 6, 0, 0, -2, 10, -4, -7, -5, -5, -4, -5, -8, -4, -4]
          k = 10

          rotated_array = array.dup
          k.times do
            rotated_array.unshift(rotated_array[-1])
            rotated_array.pop
          end

          expect(cyclic_rotation(array, k)).to eq rotated_array
        end

        it 'K=11' do
          array = [4, 6, 0, 0, -2, 10, -4, -7, -5, -5, -4, -5, -8, -4, -4]
          k = 11

          rotated_array = array.dup
          k.times do
            rotated_array.unshift(rotated_array[-1])
            rotated_array.pop
          end

          expect(cyclic_rotation(array, k)).to eq rotated_array
        end

        it 'K=12' do
          array = [4, 6, 0, 0, -2, 10, -4, -7, -5, -5, -4, -5, -8, -4, -4]
          k = 12

          rotated_array = array.dup
          k.times do
            rotated_array.unshift(rotated_array[-1])
            rotated_array.pop
          end

          expect(cyclic_rotation(array, k)).to eq rotated_array
        end

        it 'K=13' do
          array = [4, 6, 0, 0, -2, 10, -4, -7, -5, -5, -4, -5, -8, -4, -4]
          k = 13

          rotated_array = array.dup
          k.times do
            rotated_array.unshift(rotated_array[-1])
            rotated_array.pop
          end

          expect(cyclic_rotation(array, k)).to eq rotated_array
        end

        it 'K=14' do
          array = [4, 6, 0, 0, -2, 10, -4, -7, -5, -5, -4, -5, -8, -4, -4]
          k = 14

          rotated_array = array.dup
          k.times do
            rotated_array.unshift(rotated_array[-1])
            rotated_array.pop
          end

          expect(cyclic_rotation(array, k)).to eq rotated_array
        end
      end
    end

    context 'Medium_random' do
      context 'Medium Random Sequence, N = 100' do
        it 'N=100, K=3' do
          array = [279, -950, -450, -554, 473, 354, 785, -827, -156, -941, -563,
                    11, -947, -603, 300, 90, -559, 179, 619, -987, 612, 396, -320,
                    -689, 915, -327, -815, -807, 695, 208, 615, 460, 72, 947,
                    -243, 104, 659, 237, 724, 155, 409, -909, -544, -421, -841,
                    -535, -798, -444, 272, -270, -260, -581, -466, 874, 296, 218,
                    -658, 458, -674, -241, 980, 280, 114, 369, 686, 552, -542,
                    -936, -369, -465, -578, 886, 753, -371, 311, -209, 830, -82,
                    -470, -507, 123, -475, 169, 796, -201, -562, 996, 19, -819,
                    -906, -781, 255, 584, -156, -873, -237, 993, 58, 943, 722]
          k = 3

          rotated_array = array.dup
          k.times do
            rotated_array.unshift(rotated_array[-1])
            rotated_array.pop
          end

          expect(cyclic_rotation(array, k)).to eq rotated_array
        end

        it 'N=100, K=53' do
          array = [279, -950, -450, -554, 473, 354, 785, -827, -156, -941, -563,
                    11, -947, -603, 300, 90, -559, 179, 619, -987, 612, 396, -320,
                    -689, 915, -327, -815, -807, 695, 208, 615, 460, 72, 947,
                    -243, 104, 659, 237, 724, 155, 409, -909, -544, -421, -841,
                    -535, -798, -444, 272, -270, -260, -581, -466, 874, 296, 218,
                    -658, 458, -674, -241, 980, 280, 114, 369, 686, 552, -542,
                    -936, -369, -465, -578, 886, 753, -371, 311, -209, 830, -82,
                    -470, -507, 123, -475, 169, 796, -201, -562, 996, 19, -819,
                    -906, -781, 255, 584, -156, -873, -237, 993, 58, 943, 722]
          k = 53

          rotated_array = array.dup
          k.times do
            rotated_array.unshift(rotated_array[-1])
            rotated_array.pop
          end

          expect(cyclic_rotation(array, k)).to eq rotated_array
        end
      end
    end

    context 'Maximal' do
      context 'Maximal N And K' do
        it 'N=100, K=-1000' do
          array = [710, 807, 568, 560, 454, 998, 360, 233, 335, 334, 394, 341,
                    196, 393, 380, 612, 281, 163, 282, 588, 450, 760, 823, 473,
                    189, 755, 780, 456, 693, 369, 924, 851, 813, 959, 309, 591,
                    758, 822, 451, 224, 664, 194, 735, 106, 509, 532, 207, 532,
                    550, 432, 907, 880, 902, 320, 123, 439, 202, 735, 336, 215,
                    355, 463, 762, 515, 371, 710, 140, 288, 719, 777, 191, 159,
                    555, 691, 114, 493, 347, 176, 254, 357, 520, 201, 658, 891,
                    716, 161, 684, 671, 107, 446, 687, 956, 936, 613, 630, 963,
                    289, 558, 155]
          k = -1000

          rotated_array = array.dup
          k.times do
            rotated_array.unshift(rotated_array[-1])
            rotated_array.pop
          end

          expect(cyclic_rotation(array, k)).to eq rotated_array
        end

        it 'N=100, K=1000' do
          array = [710, 807, 568, 560, 454, 998, 360, 233, 335, 334, 394, 341,
                    196, 393, 380, 612, 281, 163, 282, 588, 450, 760, 823, 473,
                    189, 755, 780, 456, 693, 369, 924, 851, 813, 959, 309, 591,
                    758, 822, 451, 224, 664, 194, 735, 106, 509, 532, 207, 532,
                    550, 432, 907, 880, 902, 320, 123, 439, 202, 735, 336, 215,
                    355, 463, 762, 515, 371, 710, 140, 288, 719, 777, 191, 159,
                    555, 691, 114, 493, 347, 176, 254, 357, 520, 201, 658, 891,
                    716, 161, 684, 671, 107, 446, 687, 956, 936, 613, 630, 963,
                    289, 558, 155]
          k = 1000

          rotated_array = array.dup
          k.times do
            rotated_array.unshift(rotated_array[-1])
            rotated_array.pop
          end

          expect(cyclic_rotation(array, k)).to eq rotated_array
        end
      end
    end
  end
end
