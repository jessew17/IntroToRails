class StatController < ApplicationController
  def index
    @allStats = Stat.all
  end

  def show
    @stat = Stat.find_by(species: params[:species])
  end
end
