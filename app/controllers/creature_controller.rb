class CreatureController < ApplicationController
  def index
    @allCreatures = Creature.all
  end

  def show
    @creature = Creature.find_by(name: params[:name])
  end
end
