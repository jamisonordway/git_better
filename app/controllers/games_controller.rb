class GamesController < ApplicationController

  def index
    @games = Game.all
  end

  def new
  end

  def create
    game_params = params.permit(:title)

    game = Game.new(title: game_params[:title])

    if game.save
      redirect_to(games_path)
    else
      flash[:notice] = 'Error creating game'
    end
  end

end
