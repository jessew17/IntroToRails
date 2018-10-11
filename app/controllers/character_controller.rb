class CharacterController < ApplicationController
  def index
    @allCharacters = Character.all
  end

  def show
  end
end
