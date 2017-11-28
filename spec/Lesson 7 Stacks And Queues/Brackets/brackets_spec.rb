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
  end
end
