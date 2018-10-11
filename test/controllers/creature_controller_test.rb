require 'test_helper'

class CreatureControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get creature_index_url
    assert_response :success
  end

  test "should get show" do
    get creature_show_url
    assert_response :success
  end

end
