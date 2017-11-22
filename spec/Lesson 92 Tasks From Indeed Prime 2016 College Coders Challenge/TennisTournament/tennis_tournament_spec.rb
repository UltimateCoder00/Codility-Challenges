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
      it 'Only_two_players 1' do
        expect(tennis_tournament(2, 1)).to eq 1
      end

      it 'Only_two_players 2' do
        expect(tennis_tournament(2, 9)).to eq 1
      end

      it 'Only_two_players 3' do
        expect(tennis_tournament(2, 30000)).to eq 1
      end
    end
  end
end
