require "./lib/Lesson 7 Stacks And Queues/Brackets/brackets"

describe 'Brackets' do
  describe 'Example Tests' do
    it 'Example1' do
      expect(brackets("{[()()]}")).to eq 1
    end

    it 'Example2' do
      expect(brackets("([)()]")).to eq 0
    end
  end

  describe 'Correctness Tests' do
    context 'Negative_match' do
      it 'Invalid Structures 1' do
        expect(brackets("))((")).to eq 0
      end

      it 'Invalid Structures 2' do
        expect(brackets("())(()")).to eq 0
      end

      it 'Invalid Structures 3' do
        expect(brackets("[()}")).to eq 0
      end

      it 'Invalid Structures 4' do
        expect(brackets("{([][][])]")).to eq 0
      end

      it 'Invalid Structures 5' do
        expect(brackets("{{{{")).to eq 0
      end
    end

    context 'Empty' do
      it 'Empty String' do
        expect(brackets("")).to eq 1
      end
    end

    context 'Simple_grouped' do
      it 'Simple Grouped Positive And Negative Test, Length=22 1' do
        expect(brackets("()(()())((()())(()()))")).to eq 1
      end

      it 'Simple Grouped Positive And Negative Test, Length=22 2' do
        expect(brackets("()(()()(((()())(()()))")).to eq 0
      end

      it 'Simple Grouped Positive And Negative Test, Length=22 3' do
        expect(brackets(")(")).to eq 0
      end

      it 'Simple Grouped Positive And Negative Test, Length=22 4' do
        expect(brackets("}{")).to eq 0
      end

      it 'Simple Grouped Positive And Negative Test, Length=22 5' do
        expect(brackets("({{({}[]{})}}[]{})")).to eq 1
      end
    end
  end

  describe 'Performance Tests' do
    context 'Large1' do
      it 'Simple Large Positive Test, 100K ("s followed by 100K )"s' do
        s = '('*100000 + ')'*100000
        expect(brackets(s)).to be_a Integer
      end

      it ')(' do
        expect(brackets(")(")).to be_a Integer
      end

      it 'Simple Large Positive Test, 7006 ("s followed by 7006 )"s' do
        s = '('*7006 + ')'*7006
        expect(brackets(s)).to be_a Integer
      end
    end

    context 'Large2' do
      it 'Simple Large Negative Test, 10K+1 ("s Followed By 10K )"s' do
        s = '('*10001 + ')'*10000
        expect(brackets(s)).to be_a Integer
      end

      it ')(' do
        expect(brackets(")(")).to be_a Integer
      end

      it '()' do
        expect(brackets("()")).to be_a Integer
      end
    end

    context 'Large_full_ternary_tree' do
      it 'Tree Of The Form T=(TTT) And Depth 11, Length=177K+' do
        s = ''

        177146.times do
          s << ['(', '[', '{', ')', ']', '}'].sample
        end

        expect(brackets(s)).to be_a Integer
      end
    end
  end
end
