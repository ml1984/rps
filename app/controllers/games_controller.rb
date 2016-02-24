class GamesController < ApplicationController
  respond_to :html, :json
  def new
    @game = Game.new
    respond_with(@game)
  end

  def create
    @game = Game.create(params[:game])
    respond_with(@game)
  end

  def update
    @game = Game.find(params[:id])

    @game.update(game_params)
    respond_with(@game)
  end

  def game_params
    params.require(:game).permit(:player_1_name, :player_1_move, :player_2_name, :player_2_move)
  end
end
