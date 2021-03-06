require 'rails_helper'

RSpec.describe Game, type: :model do

  it "should allow user to save player 1's name" do
    g = Game.create(player1_name: "George")
    g.player1_name = "George"
    expect(g.player1_name).to eq("George")
  end
  it "should allow user to save player 2's name" do
    g = Game.create(player2_name: "Bettsy")
    g.player2_name = "Bettsy"
    expect(g.player2_name).to eq("Bettsy")
  end
  it "should calculate the winner if player 1 and player 2 have played" do
    g = Game.create(player1_name: "George",
                    player2_name: "Bettsy",
                    player1_move: 'a',
                     player2_move: 'k')
    expect(g.winner).to eq("Bettsy")
  end
  it "should save, but not calculate a winner if only one player has played" do
    g = Game.create(player1_name: "George")
    g.player1_name = "George"
    expect(g.player1_name).to eq("George")
    expect(g.winner).to eq(nil)

  end
end
