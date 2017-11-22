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

    context 'Even_players_less_courts' do
      it 'Even Players Less Courts 1' do
        expect(tennis_tournament(4, 1)).to eq 1
      end

      it 'Even Players Less Courts 2' do
        expect(tennis_tournament(30, 12)).to eq 12
      end

      it 'Even Players Less Courts 3' do
        expect(tennis_tournament(29900, 14949)).to eq 14949
      end
    end

    context 'Odd_players_less_courts' do
      it 'Odd Players Less Courts 1' do
        expect(tennis_tournament(17, 1)).to eq 1
      end

      it 'Odd Players Less Courts 2' do
        expect(tennis_tournament(37, 12)).to eq 12
      end

      it 'Odd Players Less Courts 3' do
        expect(tennis_tournament(29901, 14949)).to eq 14949
      end
    end

    context 'Even_player_more_courts' do
      it 'Even Player More Courts 1' do
        expect(tennis_tournament(17, 1)).to eq 1
      end

      it 'Even Player More Courts 2' do
        expect(tennis_tournament(37, 12)).to eq 12
      end

      it 'Even Player More Courts 3' do
        expect(tennis_tournament(29901, 14949)).to eq 14949
      end
    end

    context 'Odd_player_more_courts' do
      it 'Odd Player More Courts 1' do
        expect(tennis_tournament(5, 9)).to eq 2
      end

      it 'Odd Player More Courts 2' do
        expect(tennis_tournament(29999, 15003)).to eq 14999
      end

      it 'Odd Player More Courts 3' do
        expect(tennis_tournament(14999, 30000)).to eq 7499
      end
    end

    context 'Everybody_plays' do
      it 'Everybody Plays 1' do
        expect(tennis_tournament(10, 5)).to eq 5
      end

      it 'Everybody Plays 2' do
        expect(tennis_tournament(30000, 15000)).to eq 15000
      end
    end

    context 'Random_tests' do
      it 'Random Test 1' do
        expect(tennis_tournament(1, 1)).to eq 0
      end

      it 'Random Test 2' do
        expect(tennis_tournament(1, 3)).to eq 0
      end

      it 'Random Test 3' do
        expect(tennis_tournament(29330, 18815)).to eq 14665
      end

      it 'Random Test 4' do
        expect(tennis_tournament(29997, 29990)).to eq 14998
      end
    end
  end
end
