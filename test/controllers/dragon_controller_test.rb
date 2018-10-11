require 'test_helper'

class DragonControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get dragon_index_url
    assert_response :success
  end

  test "should get show" do
    get dragon_show_url
    assert_response :success
  end

end
