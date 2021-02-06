class BossesController < ApplicationController

  def index
    @bosses = Boss.all
  end

  def new
  end
end
