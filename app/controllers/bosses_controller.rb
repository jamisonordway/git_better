class BossesController < ApplicationController

  def index
    @bosses = Boss.all
  end

  def new
  end

  def create
    boss_params = params.permit(:name, :difficulty)

    boss = Boss.new(
      name: boss_params[:name],
      difficulty: boss_params[:difficulty]
    )

    if boss.save
      redirect_to(bosses_path)
    else
      flash[:notice] = 'Error creating boss'
    end
  end
end
