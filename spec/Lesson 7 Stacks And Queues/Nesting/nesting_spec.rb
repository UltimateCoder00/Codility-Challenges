require "./lib/Lesson 7 Stacks And Queues/Nesting/nesting"

describe 'Nesting' do
  describe 'Example Tests' do
    it 'Example1' do
      expect(nesting("(()(())())")).to eq 1
    end

    it 'Example2' do
      expect(nesting("())")).to eq 0
    end
  end
end
