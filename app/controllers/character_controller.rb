class CharacterController < ApplicationController
  def index
    @allCharacters = Character.all
  end

  def show
    @allCharacters = Character.all
  end
end
