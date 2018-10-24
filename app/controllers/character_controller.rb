class CharacterController < ApplicationController
  def index
    @allCharacters = Character.all
  end

  def show
    @character = Character.find_by(name: params[:name])
  end
end
