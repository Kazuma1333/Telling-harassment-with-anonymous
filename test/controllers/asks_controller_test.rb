require 'test_helper'

class AsksControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get asks_new_url
    assert_response :success
  end

  test "should get check" do
    get asks_check_url
    assert_response :success
  end

  test "should get thanks" do
    get asks_thanks_url
    assert_response :success
  end

end
