class DataController < ApplicationController
  def show
  end

  def search
    @characters = Character.all
    @creatures = Creature.all
    @dragons = Dragon.all
    @scenarios = Scenario.all

    if params[:search]
      @characters = Character.search(params[:search])
      @creatures = Creature.search(params[:search])
      @dragons = Dragon.search(params[:search])
      @scenarios = Scenario.search(params[:search])
    end 
  end
end
