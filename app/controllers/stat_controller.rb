class StatController < ApplicationController
  def index
    @allStats = Stat.all
  end

  def show
  end
end
