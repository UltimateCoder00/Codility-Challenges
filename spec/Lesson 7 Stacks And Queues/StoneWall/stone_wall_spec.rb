require "./lib/Lesson 7 Stacks And Queues/StoneWall/stone_wall"

describe 'StoneWall' do
  describe 'Example Tests' do
    it 'Example' do
      expect(stone_wall([8,8,5,7,9,8,7,4,8])).to eq 7
    end
  end

  describe 'Correctness Tests' do
    context 'Simple1' do
      it 'Example' do
        expect(stone_wall([1,2,3,3,2,1])).to eq 3
      end
    end
  end
end
