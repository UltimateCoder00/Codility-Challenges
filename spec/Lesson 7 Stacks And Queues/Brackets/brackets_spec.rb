require "./lib/Lesson 7 Stacks And Queues/Brackets/brackets"

describe 'Brackets' do
  describe 'Example Tests' do
    it 'Example 1' do
      expect(brackets("{[()()]}")).to eq 1
    end

    it 'Example 2' do
      expect(brackets("([)()]")).to eq 0
    end
  end
end
