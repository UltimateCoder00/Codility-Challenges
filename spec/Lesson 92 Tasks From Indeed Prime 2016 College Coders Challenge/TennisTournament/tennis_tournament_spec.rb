require "./lib/Lesson 92 Tasks From Indeed Prime 2016 College Coders Challenge/TennisTournament/tennis_tournament"

describe 'TennisTournament' do

  describe 'Example Test' do
    it 'Example 1' do
      expect(tennis_tournament(5, 3)).to eq 2
    end

    it 'Example 2' do
      expect(tennis_tournament(10, 3)).to eq 3
    end
  end

  describe 'Correctness Tests' do
    context 'Only_two_players' do
      it 'Only Two Players 1' do
        expect(tennis_tournament(2, 1)).to eq 1
      end

      it 'Only Two Players 2' do
        expect(tennis_tournament(2, 9)).to eq 1
      end

      it 'Only Two Players 3' do
        expect(tennis_tournament(2, 30000)).to eq 1
      end
    end

    context 'Only_one_court' do
      it 'Only One Court 1' do
        expect(tennis_tournament(1, 1)).to eq 0
      end

      it 'Only One Court 2' do
        expect(tennis_tournament(5, 1)).to eq 1
      end

      it 'Only One Court 3' do
        expect(tennis_tournament(30000, 1)).to eq 1
      end

      it 'Only One Court 4' do
        expect(tennis_tournament(29999, 1)).to eq 1
      end
    end
  end
end
