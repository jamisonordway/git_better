class BossesController < ApplicationController

  def index
    if params[:game_id]
      @bosses = Boss.where(game_id: params[:game_id])
    else
      @bosses = Boss.all
    end
  end

  def new
    @games = Game.all
  end

  def create
    boss_params = params.permit(:name, :difficulty, :game_id)

    boss = Boss.new(
      name: boss_params[:name],
      difficulty: boss_params[:difficulty],
      game_id: boss_params[:game_id]
    )

    if boss.save
      redirect_to(bosses_path)
    else
      flash[:notice] = 'Error creating boss'
    end
  end
end
