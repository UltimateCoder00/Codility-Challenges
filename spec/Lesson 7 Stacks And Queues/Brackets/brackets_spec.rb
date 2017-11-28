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
  end
end
