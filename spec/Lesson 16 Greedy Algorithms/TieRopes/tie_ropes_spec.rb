require "./lib/Lesson 16 Greedy Algorithms/TieRopes/tie_ropes"

describe 'TieRopes' do

  describe 'Example Test' do
    it 'Example' do
      expect(tie_ropes(4, [1,2,3,4,1,1,3])).to eq 3
    end
  end

  describe 'Correctness Tests' do
    context 'Single' do
      it 'Single Element 1' do
        expect(tie_ropes(1000000000, [1000000000])).to eq 1
      end

      it 'Single Element 2' do
        expect(tie_ropes(1000000000, [999999999])).to eq 0
      end

      it 'Single Element 3' do
        expect(tie_ropes(1, [1])).to eq 1
      end

      it 'Single Element 4' do
        expect(tie_ropes(1, [2])).to eq 1
      end

      it 'Single Element 5' do
        expect(tie_ropes(2, [1])).to eq 0
      end
    end

    context 'Double' do
      it 'Two Elements 1' do
        expect(tie_ropes(1000000000, [1000000000, 1000000000])).to eq 2
      end

      it 'Two Elements 2' do
        expect(tie_ropes(1000000000, [1000000000, 999999999])).to eq 1
      end

      it 'Two Elements 3' do
        expect(tie_ropes(2, [1,2])).to eq 1
      end

      it 'Two Elements 4' do
        expect(tie_ropes(2, [2,1])).to eq 1
      end

      it 'Two Elements 5' do
        expect(tie_ropes(3, [1,1])).to eq 0
      end
    end

    context 'Small_functional' do
      it 'Small Functional Tests 1' do
        expect(tie_ropes(5, [1,2,1,5,2,3,1,1,1,1])).to eq 2
      end

      it 'Small Functional Tests 2' do
        expect(tie_ropes(10, [3,3,2,1,2,1,1,1,8,12])).to eq 3
      end
    end

    context 'Small_random' do
      it 'Small Random Sequences Length = ~100 1' do
        array = [452379554, 559772387, 924210585, 465650071, 507841274, 587384829,
                  184660344, 511908640, 629882721, 792976873, 94123457, 303401263,
                  90670538, 809644535, 693438483, 41880337, 982193421, 964757782,
                  653922534, 615562705, 157494096, 15000737, 528381267, 59551106,
                  190208263, 241943014, 30082590, 463934462, 440531117, 842427129,
                  519124115, 640291708, 499773153, 662449532, 457329882, 278162900,
                  997656201, 995691642, 840215550, 707809622, 315277218, 229665902,
                  289039948, 70223500, 766287887, 400399805, 846583622, 386513532,
                  958042384, 847309774, 544938, 209717415, 910271929, 469987277,
                  980358942, 397424389, 73038344, 629454913, 778510859, 269775587,
                  87144199, 332585626, 964076217, 758040517, 117991680, 246387949,
                  101046309, 59893403, 797021512, 177678129, 559295142, 447424878,
                  190684416, 731894216, 130967084, 643715124, 116507988, 420755618,
                  212865674, 269794978, 970929057, 803411504, 304145150, 884865113,
                  210710222, 394274638, 854376902, 641835657, 100332753, 989301698,
                  213243369, 258277558, 772689690, 328955426, 296324763, 73398554,
                  90117173, 582734799, 243012921, 601283844]
        expect(tie_ropes(1000000000, array)).to eq 36
      end

      it 'Small Random Sequences Length = ~100 2' do
        array = [2, 6, 1, 5, 8, 10, 6, 10, 1, 6, 6, 8, 1, 8, 7, 9, 9, 2, 1, 10,
                  4, 7, 6, 9, 1, 9, 6, 9, 6, 3, 5, 2, 4, 6, 4, 9, 2, 2, 7, 4, 8,
                  4, 5, 7, 8, 9, 2, 7, 2, 5, 1, 2, 2, 10, 8, 3, 4, 6, 4, 9, 2, 1,
                  8, 9, 6, 6, 2, 3, 7, 4, 3, 9, 5, 2, 2, 7, 10, 2, 3, 2, 5, 8, 8,
                  3, 9, 2, 2, 10, 1, 2, 2, 6, 6, 4, 10, 4, 9, 2, 10, 7]
        expect(tie_ropes(10, array)).to eq 41
      end
    end
  end

  describe 'Performance Tests' do
    context 'Medium_random' do
      it 'Chaotic Medium Sequences Length = ~5,000 1' do
        k = 1000000000
        array = Array.new(5000) { rand(1..1000000000) }
        expect(tie_ropes(k, array)).to be_a Integer
      end

      it 'Chaotic Medium Sequences Length = ~5,000 2' do
        k = 10
        array = Array.new(5000) { rand(1..2) }
        expect(tie_ropes(k, array)).to be_a Integer
      end

      it 'Chaotic Medium Sequences Length = ~5,000 3' do
        k = 500
        array = Array.new(5000) { rand(1..2) }
        expect(tie_ropes(k, array)).to be_a Integer
      end
    end
  end
end
