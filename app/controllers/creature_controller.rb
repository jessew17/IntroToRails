class CreatureController < ApplicationController
  def index
    @allCreatures = Creature.all
  end

  def show
  end
end
