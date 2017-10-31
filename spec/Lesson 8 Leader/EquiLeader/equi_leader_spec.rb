require "./lib/Lesson 8 Leader/EquiLeader/equi_leader"

describe 'EquiLeader' do

  describe 'Example Tests' do
    it 'Example: [4,3,4,4,4,2] to 2' do
      expect(equi_leader([4,3,4,4,4,2])).to eq 2
    end
  end
end
