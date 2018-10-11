class DragonController < ApplicationController
  def index
    @allDragons = Dragon.all
  end

  def show
  end
end
