class DragonController < ApplicationController
  def index
    @allDragons = Dragon.all
  end

  def show
    @dragon = Dragon.find_by(name: params[:name])
  end
end
