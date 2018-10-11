require 'test_helper'

class ScenarioControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get scenario_index_url
    assert_response :success
  end

  test "should get show" do
    get scenario_show_url
    assert_response :success
  end

end
