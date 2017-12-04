require "./lib/Lesson 7 Stacks And Queues/StoneWall/stone_wall"

describe 'StoneWall' do
  describe 'Example Tests' do
    it 'Example' do
      expect(stone_wall([8,8,5,7,9,8,7,4,8])).to eq 7
    end
  end

  describe 'Correctness Tests' do
    context 'Simple1' do
      it 'Simple 1' do
        expect(stone_wall([1,2,3,3,2,1])).to eq 3
      end
    end

    context 'Simple2' do
      it 'Simple 2' do
        expect(stone_wall([1,1,1,2,3,3,2,1,2,3,3,3])).to eq 5
      end
    end

    context 'Simple3' do
      it 'Simple 3' do
        expect(stone_wall([2,5,1,4,6,7,9,10,1])).to eq 8
      end
    end

    context 'Simple4' do
      it 'Simple4 1' do
        expect(stone_wall([3,2,1])).to eq 3
      end

      it 'Simple4 2' do
        expect(stone_wall([2,3,2,1])).to eq 3
      end
    end
  end
end
