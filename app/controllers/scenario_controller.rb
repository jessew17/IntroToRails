class ScenarioController < ApplicationController
  def index
    @allScenarios = Scenario.all
  end

  def show
    @scenario = Scenario.find_by(region: params[:region])
  end
end
