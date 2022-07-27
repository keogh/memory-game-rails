class GamesController < ApplicationController
  before_action :set_game, only: [:show, :edit, :update, :destroy]

  def index
  end

  def new
    @game = Game.new
  end

  def create
    @game = Game.new(game_params)
    # create players
    # create cards (2x num_pairs)

    if @game.save
      redirect_to games_path, notice: "Game was successfully created."
    else
      render :new
    end
  end

  def show
  end

  private

  def set_game
    @game = Game.find(params[:id])
  end

  def game_params
    params.require(:game).permit(:num_players, :num_pairs)
  end
end
