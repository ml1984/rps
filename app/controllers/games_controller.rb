class GamesController < ApplicationController
  respond_to :html, :json

  def index
    @games = Game.where('winner IS NOT NULL')
    respond_with(@games)
  end

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
    respond_with(@game, json: @game)
  end

  def game_params
    params.require(:game).permit(:player1_name, :player1_move, :player2_name, :player2_move)
  end
end
