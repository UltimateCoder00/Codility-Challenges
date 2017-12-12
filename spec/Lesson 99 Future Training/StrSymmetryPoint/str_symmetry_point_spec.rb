require "./lib/Lesson 99 Future Training/StrSymmetryPoint/str_symmetry_point"

describe 'StrSymmetryPoint' do

  describe 'Example Tests' do
    it 'Example 1' do
      expect(str_symmetry_point("racecar")).to eq 3
    end

    it 'Example 2' do
      expect(str_symmetry_point("x")).to eq 0
    end
  end

  describe 'Correctness Tests' do
    context 'Extreme_empty_or_one' do
      it 'Empty' do
        expect(str_symmetry_point("")).to eq -1
      end

      it 'One Character Strings' do
        expect(str_symmetry_point("a")).to eq 0
      end
    end

    context 'Symmetric' do
      it 'Short Symmetric Strings 1' do
        expect(str_symmetry_point("ala")).to eq 1
      end

      it 'Short Symmetric Strings 2' do
        expect(str_symmetry_point("abba")).to eq -1
      end

      it 'Short Symmetric Strings 3' do
        expect(str_symmetry_point("steponopets")).to eq 5
      end
    end

    context 'Even' do
      it 'Even Length' do
        expect(str_symmetry_point("aabb")).to eq -1
      end

      it 'Symmetric Strings 1' do
        expect(str_symmetry_point("abaaba")).to eq -1
      end

      it 'Symmetric Strings 2' do
        expect(str_symmetry_point("a")).to eq 0
      end
    end

    context 'Three_chars' do
      it '3 Characters (Multiple Runs) 1' do
        expect(str_symmetry_point("abc")).to eq -1
      end

      it '3 Characters (Multiple Runs) 2' do
        expect(str_symmetry_point("aba")).to eq 1
      end

      it '3 Characters (Multiple Runs) 3' do
        expect(str_symmetry_point("aaa")).to eq 1
      end
    end

    context 'Letters_a' do
      it 'Letters "a" Only 1' do
        expect(str_symmetry_point("aaaaaaaaaa")).to eq -1
      end

      it 'Letters "a" Only 2' do
        expect(str_symmetry_point("aaaaaaaaaaaaaaa")).to eq 7
      end
    end

    context 'Alphabet_symmetric' do
      it 'Nontrivial Symmetry, N = 51' do
        expect(str_symmetry_point("abcdefghijklmnopqrstuvwxyzyxwvutsrqponmlkjihgfedcba")).to eq 25
      end
    end

    context 'Nonsymmetric_inside' do
      it 'Mismatch Close To The Middle, N = 43 1' do
        expect(str_symmetry_point("abbaabbaabbaabbaabbaabcabbaabbaabbaabbaabba")).to eq -1
      end

      it 'Mismatch Close To The Middle, N = 43 2' do
        expect(str_symmetry_point("barakarab")).to eq 4
      end
    end

    context 'Nonsymmetric_outside' do
      it 'Mismatch Close To The Ends, N = 43 1' do
        expect(str_symmetry_point("babbaabbaabbaabbaabbacabbaabbaabbaabbaabbaa")).to eq -1
      end

      it 'Mismatch Close To The Ends, N = 43 2' do
        expect(str_symmetry_point("brakikarb")).to eq 4
      end
    end
  end

  describe 'Proformance Tests' do
    context 'Large_nonsymmetric' do
      it 'Nonsymmetric String, N = 100k+ + [aba]' do
        s = "abcde"*20000 + "aba"
        expect(str_symmetry_point(s)).to be_a Integer
      end

      it 'Nonsymmetric String, N = 100k+ + [aba]' do
        s = "y" + "abcde"*19999 + "abcdaba"
        expect(str_symmetry_point(s)).to be_a Integer
      end

      it 'One Character Strings' do
        expect(str_symmetry_point("abuba")).to be_a Integer
      end
    end

    context 'Large_symmetric1' do
      it 'Symmetric String, N=100k' do
        s = "zzxxq"*10000 + "zzz" + "qxxzz"*10000
        expect(str_symmetry_point(s)).to be_a Integer
      end
    end

    context 'Large_symmetric2' do
      it 'Symmetric String, N=200k' do
        s = "a"*200001
        expect(str_symmetry_point(s)).to be_a Integer
      end
    end

    context 'Large_symmetric3' do
      it 'Symmetric String, N=1M+' do
        s = "abcde"*500000 + "aaa" + "edcba"*500000
        expect(str_symmetry_point(s)).to be_a Integer
      end
    end
  end
end
