class ScenarioController < ApplicationController
  def index
    @allScenarios = Scenario.all
  end

  def show
  end
end
